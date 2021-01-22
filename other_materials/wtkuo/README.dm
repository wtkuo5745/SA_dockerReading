2021/1/22
# azure cli login
az login 新的帳號 

#create resoucre groups
az group create --location JapanEast --name wtkuo-aks-20210122

#list resoucre group
az group list

#create az aks
az aks create --resource-group wtkuo-aks-20210122 --name johncluster --node-count 1 
--node-vm-size standard_b2s --generate-ssh-keys

指定 --node-vm-size 爲 standard_b2s 來節費

#取得驗證資料/使用 az 指令 連接 kubernetes 叢集
az aks get-credentials --resource-group wtkuo-aks-20210122 --name johncluster

#測試 kubectl 是否可以使用
kubectl get node

#delete az aks 
az aks delete --resource-group wtkuo-aks-20210122 --name johncluster

#delete az resoucre group
az group delete --name wtkuo-aks-20210122

-----------------------
2021/1/20
看完chapter 2，但還沒實作
-----------------------
2021/1/14
az aks create --resource-group momo-study2021 --name sakanaAKScluster --node-count 1 --node-vm-size standard_b2s --generate-ssh-keys
kubectl get node
-----------------------
2021/1/8
test git pull & push
-----------------------