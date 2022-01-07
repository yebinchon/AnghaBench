
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_netdev_event_work {int work; struct net_device* ndev; } ;
struct net_device {int if_type; } ;


 int GFP_ATOMIC ;


 int INIT_WORK (int *,int ) ;
 int dev_hold (struct net_device*) ;
 struct roce_netdev_event_work* kmalloc (int,int ) ;
 int pr_warn (char*) ;
 int queue_work (int ,int *) ;
 struct net_device* rdma_vlan_dev_real_dev (struct net_device*) ;
 int roce_gid_mgmt_wq ;
 int roce_gid_queue_scan_event_handler ;

__attribute__((used)) static void
roce_gid_queue_scan_event(struct net_device *ndev)
{
 struct roce_netdev_event_work *work;

retry:
 switch (ndev->if_type) {
 case 129:
  break;
 case 128:
  ndev = rdma_vlan_dev_real_dev(ndev);
  if (ndev != ((void*)0))
   goto retry;

 default:
  return;
 }

 work = kmalloc(sizeof(*work), GFP_ATOMIC);
 if (!work) {
  pr_warn("roce_gid_mgmt: Couldn't allocate work for addr_event\n");
  return;
 }

 INIT_WORK(&work->work, roce_gid_queue_scan_event_handler);
 dev_hold(ndev);

 work->ndev = ndev;

 queue_work(roce_gid_mgmt_wq, &work->work);
}
