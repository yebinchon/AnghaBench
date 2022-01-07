
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd {int dma_sx; int dma_mtx; int dma_cv; int dma_tag; int cmd_page; } ;


 int bus_dma_tag_destroy (int ) ;
 int cv_destroy (int *) ;
 int mlx5_fwp_free (int ) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
free_cmd_page(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{

 mlx5_fwp_free(cmd->cmd_page);
 bus_dma_tag_destroy(cmd->dma_tag);
 cv_destroy(&cmd->dma_cv);
 mtx_destroy(&cmd->dma_mtx);
 sx_destroy(&cmd->dma_sx);
}
