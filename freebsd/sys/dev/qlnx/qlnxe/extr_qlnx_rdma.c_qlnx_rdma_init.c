
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_initialized (int *) ;
 int qlnx_rdma_dev_lock ;

void
qlnx_rdma_init(void)
{
 if (!mtx_initialized(&qlnx_rdma_dev_lock)) {
  mtx_init(&qlnx_rdma_dev_lock, "qlnx_rdma_dev_lock", ((void*)0), MTX_DEF);
 }
 return;
}
