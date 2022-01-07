
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_sq {TYPE_1__* mbuf; int dma_tag; int wq; } ;
struct TYPE_3__ {int dma_map; } ;


 int M_MLX5EN ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int free (TYPE_1__*,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mlx5_wq_cyc_get_size (int *) ;

int
mlx5e_alloc_sq_db(struct mlx5e_sq *sq)
{
 int wq_sz = mlx5_wq_cyc_get_size(&sq->wq);
 int err;
 int x;

 sq->mbuf = malloc(wq_sz * sizeof(sq->mbuf[0]), M_MLX5EN, M_WAITOK | M_ZERO);


 for (x = 0; x != wq_sz; x++) {
  err = -bus_dmamap_create(sq->dma_tag, 0, &sq->mbuf[x].dma_map);
  if (err != 0) {
   while (x--)
    bus_dmamap_destroy(sq->dma_tag, sq->mbuf[x].dma_map);
   free(sq->mbuf, M_MLX5EN);
   return (err);
  }
 }
 return (0);
}
