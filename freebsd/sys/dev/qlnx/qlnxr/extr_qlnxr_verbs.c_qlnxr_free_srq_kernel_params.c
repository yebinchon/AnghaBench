
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_srq_producers {int dummy; } ;
struct qlnxr_srq_hwq_info {int phy_prod_pair_addr; int virt_prod_pair_addr; int pbl; } ;
struct qlnxr_srq {struct qlnxr_dev* dev; struct qlnxr_srq_hwq_info hw_srq; } ;
struct qlnxr_dev {int cdev; int * ha; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT12 (int *,char*) ;
 int ecore_chain_free (int ,int *) ;
 int qlnx_dma_free_coherent (int *,int ,int ,int) ;

__attribute__((used)) static void
qlnxr_free_srq_kernel_params(struct qlnxr_srq *srq)
{
 struct qlnxr_srq_hwq_info *hw_srq = &srq->hw_srq;
 struct qlnxr_dev *dev = srq->dev;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 ecore_chain_free(dev->cdev, &hw_srq->pbl);

 qlnx_dma_free_coherent(&dev->cdev,
  hw_srq->virt_prod_pair_addr,
  hw_srq->phy_prod_pair_addr,
  sizeof(struct rdma_srq_producers));

 QL_DPRINT12(ha, "exit\n");

 return;
}
