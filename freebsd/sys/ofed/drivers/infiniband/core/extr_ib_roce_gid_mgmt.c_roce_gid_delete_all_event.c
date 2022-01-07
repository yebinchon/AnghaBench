
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_netdev_event_work {int work; struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int dev_hold (struct net_device*) ;
 int flush_workqueue (int ) ;
 struct roce_netdev_event_work* kmalloc (int,int ) ;
 int pr_warn (char*) ;
 int queue_work (int ,int *) ;
 int roce_gid_delete_all_event_handler ;
 int roce_gid_mgmt_wq ;

__attribute__((used)) static void
roce_gid_delete_all_event(struct net_device *ndev)
{
 struct roce_netdev_event_work *work;

 work = kmalloc(sizeof(*work), GFP_ATOMIC);
 if (!work) {
  pr_warn("roce_gid_mgmt: Couldn't allocate work for addr_event\n");
  return;
 }

 INIT_WORK(&work->work, roce_gid_delete_all_event_handler);
 dev_hold(ndev);
 work->ndev = ndev;
 queue_work(roce_gid_mgmt_wq, &work->work);


 flush_workqueue(roce_gid_mgmt_wq);
}
