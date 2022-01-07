
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int addr_wq ;
 int alloc_workqueue (char*,int ,int ) ;
 int rdma_addr_register_client (int *) ;
 int self ;

int addr_init(void)
{
 addr_wq = alloc_workqueue("ib_addr", WQ_MEM_RECLAIM, 0);
 if (!addr_wq)
  return -ENOMEM;

 rdma_addr_register_client(&self);

 return 0;
}
