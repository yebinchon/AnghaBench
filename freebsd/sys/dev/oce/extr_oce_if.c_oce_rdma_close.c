
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * oce_rdma_if ;

__attribute__((used)) static void
oce_rdma_close(void)
{
  if (oce_rdma_if != ((void*)0)) {
    oce_rdma_if = ((void*)0);
  }
}
