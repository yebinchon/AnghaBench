
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_dev {TYPE_2__* pdev; } ;
struct mlx5_cmd {int dma_sx; int dma_mtx; int dma_cv; int dma_tag; int * cmd_page; int cmd_buf; int dma; } ;
struct TYPE_3__ {int bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ADAPTER_PAGE_SIZE ;
 int MTX_DEF ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_get_dma_tag (int ) ;
 int cv_destroy (int *) ;
 int cv_init (int *,char*) ;
 int * mlx5_fwp_alloc (struct mlx5_core_dev*,int ,int) ;
 int mlx5_fwp_get_dma (int *,int ) ;
 int mlx5_fwp_get_virt (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
alloc_cmd_page(struct mlx5_core_dev *dev, struct mlx5_cmd *cmd)
{
 int err;

 sx_init(&cmd->dma_sx, "MLX5-DMA-SX");
 mtx_init(&cmd->dma_mtx, "MLX5-DMA-MTX", ((void*)0), MTX_DEF);
 cv_init(&cmd->dma_cv, "MLX5-DMA-CV");





 err = -bus_dma_tag_create(
     bus_get_dma_tag(dev->pdev->dev.bsddev),
     MLX5_ADAPTER_PAGE_SIZE,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MLX5_ADAPTER_PAGE_SIZE,
     1,
     MLX5_ADAPTER_PAGE_SIZE,
     0,
     ((void*)0), ((void*)0),
     &cmd->dma_tag);
 if (err != 0)
  goto failure_destroy_sx;

 cmd->cmd_page = mlx5_fwp_alloc(dev, GFP_KERNEL, 1);
 if (cmd->cmd_page == ((void*)0)) {
  err = -ENOMEM;
  goto failure_alloc_page;
 }
 cmd->dma = mlx5_fwp_get_dma(cmd->cmd_page, 0);
 cmd->cmd_buf = mlx5_fwp_get_virt(cmd->cmd_page, 0);
 return (0);

failure_alloc_page:
 bus_dma_tag_destroy(cmd->dma_tag);

failure_destroy_sx:
 cv_destroy(&cmd->dma_cv);
 mtx_destroy(&cmd->dma_mtx);
 sx_destroy(&cmd->dma_sx);
 return (err);
}
