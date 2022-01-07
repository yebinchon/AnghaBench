
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
struct mlx5e_sq {int dma_tag; int uar; TYPE_2__* priv; int wq_ctrl; TYPE_1__ stats; } ;
struct TYPE_4__ {int mdev; } ;


 int bus_dma_tag_destroy (int ) ;
 int mlx5_unmap_free_uar (int ,int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5e_free_sq_db (struct mlx5e_sq*) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
mlx5e_destroy_sq(struct mlx5e_sq *sq)
{

 sysctl_ctx_free(&sq->stats.ctx);

 mlx5e_free_sq_db(sq);
 mlx5_wq_destroy(&sq->wq_ctrl);
 mlx5_unmap_free_uar(sq->priv->mdev, &sq->uar);
 bus_dma_tag_destroy(sq->dma_tag);
}
