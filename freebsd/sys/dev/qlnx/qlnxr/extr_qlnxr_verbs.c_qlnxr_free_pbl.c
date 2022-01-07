
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnxr_pbl_info {int num_pbls; int pbl_size; } ;
struct qlnxr_pbl {int pa; int va; } ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct TYPE_3__ {int cdev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QL_DPRINT12 (TYPE_1__*,char*) ;
 int kfree (struct qlnxr_pbl*) ;
 int qlnx_dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void
qlnxr_free_pbl(struct qlnxr_dev *dev, struct qlnxr_pbl_info *pbl_info,
 struct qlnxr_pbl *pbl)
{
 int i;
 qlnx_host_t *ha;

 ha = dev->ha;

 QL_DPRINT12(ha, "enter\n");

 for (i = 0; i < pbl_info->num_pbls; i++) {
  if (!pbl[i].va)
   continue;
  qlnx_dma_free_coherent(&dev->ha->cdev, pbl[i].va, pbl[i].pa,
   pbl_info->pbl_size);
 }
 kfree(pbl);

 QL_DPRINT12(ha, "exit\n");
 return;
}
