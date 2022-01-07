
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_fw_page {unsigned int numpages; int dma_map; TYPE_2__* dev; } ;
struct TYPE_3__ {int dma_tag; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;

void
mlx5_fwp_flush(struct mlx5_fw_page *fwp)
{
 unsigned num = fwp->numpages;

 while (num--)
  bus_dmamap_sync(fwp[num].dev->cmd.dma_tag, fwp[num].dma_map, BUS_DMASYNC_PREWRITE);
}
