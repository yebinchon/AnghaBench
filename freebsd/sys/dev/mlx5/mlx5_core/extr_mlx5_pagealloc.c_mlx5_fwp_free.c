
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fw_page {unsigned int numpages; int dma_map; int virt_addr; struct mlx5_core_dev* dev; } ;
struct TYPE_2__ {int dma_tag; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int kfree (struct mlx5_fw_page*) ;

void
mlx5_fwp_free(struct mlx5_fw_page *fwp)
{
 struct mlx5_core_dev *dev;
 unsigned num;


 if (fwp == ((void*)0))
  return;


 if (fwp->numpages == 0) {
  kfree(fwp);
  return;
 }

 num = fwp->numpages;
 dev = fwp->dev;

 while (num--) {
  bus_dmamap_unload(dev->cmd.dma_tag, fwp[num].dma_map);
  bus_dmamem_free(dev->cmd.dma_tag, fwp[num].virt_addr, fwp[num].dma_map);
 }

 kfree(fwp);
}
