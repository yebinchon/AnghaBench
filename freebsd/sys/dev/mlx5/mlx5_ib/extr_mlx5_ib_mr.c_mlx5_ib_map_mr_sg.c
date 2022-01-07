
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mlx5_ib_mr {int desc_size; int max_descs; scalar_t__ access_mode; int desc_map; scalar_t__ ndescs; } ;
struct ib_mr {int device; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ MLX5_ACCESS_MODE_KLM ;
 int ib_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int,int ) ;
 int ib_sg_to_pages (struct ib_mr*,struct scatterlist*,int,unsigned int*,int ) ;
 int mlx5_ib_sg_to_klms (struct mlx5_ib_mr*,struct scatterlist*,int,unsigned int*) ;
 int mlx5_set_page ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;

int mlx5_ib_map_mr_sg(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
        unsigned int *sg_offset)
{
 struct mlx5_ib_mr *mr = to_mmr(ibmr);
 int n;

 mr->ndescs = 0;

 ib_dma_sync_single_for_cpu(ibmr->device, mr->desc_map,
       mr->desc_size * mr->max_descs,
       DMA_TO_DEVICE);

 if (mr->access_mode == MLX5_ACCESS_MODE_KLM)
  n = mlx5_ib_sg_to_klms(mr, sg, sg_nents, sg_offset);
 else
  n = ib_sg_to_pages(ibmr, sg, sg_nents, sg_offset,
    mlx5_set_page);

 ib_dma_sync_single_for_device(ibmr->device, mr->desc_map,
          mr->desc_size * mr->max_descs,
          DMA_TO_DEVICE);

 return n;
}
