
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int ) ;
 int ib_register_client (int *) ;
 int ib_sa_register_client (int *) ;
 int ib_sa_unregister_client (int *) ;
 int mcast_client ;
 int mcast_wq ;
 int sa_client ;

int mcast_init(void)
{
 int ret;

 mcast_wq = alloc_ordered_workqueue("ib_mcast", WQ_MEM_RECLAIM);
 if (!mcast_wq)
  return -ENOMEM;

 ib_sa_register_client(&sa_client);

 ret = ib_register_client(&mcast_client);
 if (ret)
  goto err;
 return 0;

err:
 ib_sa_unregister_client(&sa_client);
 destroy_workqueue(mcast_wq);
 return ret;
}
