
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_rescan_work {int work; struct ib_device* ib_dev; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct roce_rescan_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int roce_gid_mgmt_wq ;
 int roce_rescan_device_handler ;

int roce_rescan_device(struct ib_device *ib_dev)
{
 struct roce_rescan_work *work = kmalloc(sizeof(*work), GFP_KERNEL);

 if (!work)
  return -ENOMEM;

 work->ib_dev = ib_dev;
 INIT_WORK(&work->work, roce_rescan_device_handler);
 queue_work(roce_gid_mgmt_wq, &work->work);

 return 0;
}
