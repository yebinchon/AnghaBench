
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_sq {TYPE_1__* mbuf; int dma_tag; int wq; } ;
struct TYPE_2__ {int dma_map; int * mbuf; } ;


 int M_MLX5EN ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int free (TYPE_1__*,int ) ;
 int m_freem (int *) ;
 int mlx5_wq_cyc_get_size (int *) ;

void
mlx5e_free_sq_db(struct mlx5e_sq *sq)
{
 int wq_sz = mlx5_wq_cyc_get_size(&sq->wq);
 int x;

 for (x = 0; x != wq_sz; x++) {
  if (sq->mbuf[x].mbuf != ((void*)0)) {
   bus_dmamap_unload(sq->dma_tag, sq->mbuf[x].dma_map);
   m_freem(sq->mbuf[x].mbuf);
  }
  bus_dmamap_destroy(sq->dma_tag, sq->mbuf[x].dma_map);
 }
 free(sq->mbuf, M_MLX5EN);
}
