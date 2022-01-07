
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlnx_host {scalar_t__ personality; struct qlnx_host* next; } ;


 scalar_t__ ECORE_PCI_ETH_IWARP ;
 scalar_t__ ECORE_PCI_ETH_ROCE ;
 int QL_DPRINT12 (struct qlnx_host*,char*,struct qlnx_host*) ;
 int _qlnx_rdma_dev_add (struct qlnx_host*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct qlnx_host* qlnx_host_list ;
 int qlnx_rdma_dev_lock ;

void
qlnx_rdma_dev_add(struct qlnx_host *ha)
{
 QL_DPRINT12(ha, "enter ha = %p\n", ha);

 if (ha->personality != ECORE_PCI_ETH_IWARP &&
   ha->personality != ECORE_PCI_ETH_ROCE)
  return;

 mtx_lock(&qlnx_rdma_dev_lock);

 if (qlnx_host_list == ((void*)0)) {
  qlnx_host_list = ha;
  ha->next = ((void*)0);
 } else {
  ha->next = qlnx_host_list;
  qlnx_host_list = ha;
 }

 mtx_unlock(&qlnx_rdma_dev_lock);

 _qlnx_rdma_dev_add(ha);

 QL_DPRINT12(ha, "exit (%p)\n", ha);

 return;
}
