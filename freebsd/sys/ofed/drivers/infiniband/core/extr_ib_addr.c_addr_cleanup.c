
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr_wq ;
 int destroy_workqueue (int ) ;
 int rdma_addr_unregister_client (int *) ;
 int self ;

void addr_cleanup(void)
{
 rdma_addr_unregister_client(&self);
 destroy_workqueue(addr_wq);
}
