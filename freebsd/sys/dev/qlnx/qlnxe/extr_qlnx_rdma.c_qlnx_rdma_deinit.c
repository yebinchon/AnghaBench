
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int * qlnx_host_list ;
 int qlnx_rdma_dev_lock ;

void
qlnx_rdma_deinit(void)
{
 if (mtx_initialized(&qlnx_rdma_dev_lock) && (qlnx_host_list == ((void*)0))) {
  mtx_destroy(&qlnx_rdma_dev_lock);
 }
 return;
}
