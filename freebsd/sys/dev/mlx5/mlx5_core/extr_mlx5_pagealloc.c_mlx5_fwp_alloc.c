
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fw_page {unsigned int numpages; scalar_t__ load_done; int dma_map; int virt_addr; struct mlx5_core_dev* dev; } ;
struct TYPE_2__ {int dma_sx; int dma_tag; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;
typedef int gfp_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int MLX5_ADAPTER_PAGE_SIZE ;
 int MLX5_DMA_LOCK (struct mlx5_core_dev*) ;
 int MLX5_DMA_UNLOCK (struct mlx5_core_dev*) ;
 int MLX5_DMA_WAIT (struct mlx5_core_dev*) ;
 scalar_t__ MLX5_LOAD_ST_NONE ;
 scalar_t__ MLX5_LOAD_ST_SUCCESS ;
 int M_NOWAIT ;
 int bus_dmamap_load (int ,int ,int ,int ,int *,struct mlx5_fw_page*,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int kfree (struct mlx5_fw_page*) ;
 struct mlx5_fw_page* kzalloc (int,int) ;
 int mlx5_fwp_load_mem_cb ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

struct mlx5_fw_page *
mlx5_fwp_alloc(struct mlx5_core_dev *dev, gfp_t flags, unsigned num)
{
 struct mlx5_fw_page *fwp;
 unsigned x;
 int err;


 if (num == 0) {
  fwp = kzalloc(sizeof(*fwp), flags);
  if (fwp != ((void*)0))
   fwp->dev = dev;
  return (fwp);
 }


 if (flags & M_NOWAIT)
  return (((void*)0));

 fwp = kzalloc(sizeof(*fwp) * num, flags);


 sx_xlock(&dev->cmd.dma_sx);

 for (x = 0; x != num; x++) {

  fwp[x].dev = dev;

  fwp[x].numpages = num - x;


  err = bus_dmamem_alloc(dev->cmd.dma_tag, &fwp[x].virt_addr,
      BUS_DMA_WAITOK | BUS_DMA_COHERENT, &fwp[x].dma_map);
  if (err != 0)
   goto failure;


  MLX5_DMA_LOCK(dev);
  (void) bus_dmamap_load(
      dev->cmd.dma_tag, fwp[x].dma_map, fwp[x].virt_addr,
      MLX5_ADAPTER_PAGE_SIZE, &mlx5_fwp_load_mem_cb,
      fwp + x, BUS_DMA_WAITOK | BUS_DMA_COHERENT);

  while (fwp[x].load_done == MLX5_LOAD_ST_NONE)
   MLX5_DMA_WAIT(dev);
  MLX5_DMA_UNLOCK(dev);


  if (fwp[x].load_done != MLX5_LOAD_ST_SUCCESS) {
   bus_dmamem_free(dev->cmd.dma_tag, fwp[x].virt_addr,
       fwp[x].dma_map);
   goto failure;
  }
 }
 sx_xunlock(&dev->cmd.dma_sx);
 return (fwp);

failure:
 while (x--) {
  bus_dmamap_unload(dev->cmd.dma_tag, fwp[x].dma_map);
  bus_dmamem_free(dev->cmd.dma_tag, fwp[x].virt_addr, fwp[x].dma_map);
 }
 sx_xunlock(&dev->cmd.dma_sx);
 kfree(fwp);
 return (((void*)0));
}
