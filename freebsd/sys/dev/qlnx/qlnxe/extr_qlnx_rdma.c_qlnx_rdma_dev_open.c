
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_host {scalar_t__ personality; int qlnx_rdma; } ;
struct TYPE_3__ {int (* notify ) (struct qlnx_host*,int ,int ) ;} ;


 scalar_t__ ECORE_PCI_ETH_IWARP ;
 scalar_t__ ECORE_PCI_ETH_ROCE ;
 int QLNX_ETHDEV_UP ;
 int QL_DPRINT12 (struct qlnx_host*,char*,struct qlnx_host*,TYPE_1__*) ;
 TYPE_1__* qlnx_rdma_if ;
 int stub1 (struct qlnx_host*,int ,int ) ;

void
qlnx_rdma_dev_open(struct qlnx_host *ha)
{
 QL_DPRINT12(ha, "enter ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);

 if (qlnx_rdma_if == ((void*)0))
  return;

 if (ha->personality != ECORE_PCI_ETH_IWARP &&
  ha->personality != ECORE_PCI_ETH_ROCE)
  return;

 qlnx_rdma_if->notify(ha, ha->qlnx_rdma, QLNX_ETHDEV_UP);

 QL_DPRINT12(ha, "exit ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);
 return;
}
