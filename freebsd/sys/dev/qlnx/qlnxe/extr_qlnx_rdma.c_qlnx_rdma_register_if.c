
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qlnx_rdma_if_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ qlnx_host_t ;


 int _qlnx_rdma_dev_add (TYPE_1__*) ;
 scalar_t__ mtx_initialized (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__* qlnx_host_list ;
 int qlnx_rdma_dev_lock ;
 int * qlnx_rdma_if ;

int
qlnx_rdma_register_if(qlnx_rdma_if_t *rdma_if)
{
 qlnx_host_t *ha;

 if (mtx_initialized(&qlnx_rdma_dev_lock)) {

  mtx_lock(&qlnx_rdma_dev_lock);
  qlnx_rdma_if = rdma_if;

  ha = qlnx_host_list;

  while (ha != ((void*)0)) {
   _qlnx_rdma_dev_add(ha);
   ha = ha->next;
  }

  mtx_unlock(&qlnx_rdma_dev_lock);

  return (0);
 }

 return (-1);
}
