
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_host {scalar_t__ personality; int qlnx_rdma; } ;
struct TYPE_3__ {int (* remove ) (struct qlnx_host*,int ) ;} ;


 scalar_t__ ECORE_PCI_ETH_IWARP ;
 scalar_t__ ECORE_PCI_ETH_ROCE ;
 int QL_DPRINT12 (struct qlnx_host*,char*,struct qlnx_host*,TYPE_1__*) ;
 TYPE_1__* qlnx_rdma_if ;
 int stub1 (struct qlnx_host*,int ) ;

__attribute__((used)) static int
_qlnx_rdma_dev_remove(struct qlnx_host *ha)
{
 int ret = 0;

 QL_DPRINT12(ha, "enter ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);

 if (qlnx_rdma_if == ((void*)0))
  return (ret);

 if (ha->personality != ECORE_PCI_ETH_IWARP &&
  ha->personality != ECORE_PCI_ETH_ROCE)
  return (ret);

 ret = qlnx_rdma_if->remove(ha, ha->qlnx_rdma);

 QL_DPRINT12(ha, "exit ha = %p qlnx_rdma_if = %p\n", ha, qlnx_rdma_if);
 return (ret);
}
