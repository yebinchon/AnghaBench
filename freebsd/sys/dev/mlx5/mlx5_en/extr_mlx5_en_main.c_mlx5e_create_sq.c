
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mlx5e_sq_param {int wq; void* sqc; } ;
struct TYPE_9__ {int arg; int ctx; } ;
struct TYPE_10__ {int * db; } ;
struct mlx5e_sq {int bf_buf_size; int tc; int dma_tag; int uar; int wq_ctrl; TYPE_4__ stats; struct mlx5e_priv* priv; int ifp; int mkey_be; TYPE_5__ wq; } ;
struct TYPE_8__ {int key; } ;
struct mlx5e_priv {int sysctl_ifnet; int ifp; TYPE_3__ mr; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channel {int ix; struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {TYPE_2__* pdev; } ;
typedef int buffer ;
struct TYPE_6__ {int bsddev; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int BUS_SPACE_MAXADDR ;
 int MLX5E_MAX_TX_MBUF_FRAGS ;
 int MLX5E_MAX_TX_MBUF_SIZE ;
 int MLX5E_MAX_TX_PAYLOAD_SIZE ;
 int MLX5E_SQ_STATS_NUM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 size_t MLX5_SND_DBR ;
 int SYSCTL_CHILDREN (int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_get_dma_tag (int ) ;
 int cpu_to_be32 (int ) ;
 int log_bf_reg_size ;
 int mlx5_alloc_map_uar (struct mlx5_core_dev*,int *) ;
 int mlx5_unmap_free_uar (struct mlx5_core_dev*,int *) ;
 int mlx5_wq_cyc_create (struct mlx5_core_dev*,int *,void*,TYPE_5__*,int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5e_alloc_sq_db (struct mlx5e_sq*) ;
 int mlx5e_create_stats (int *,int ,char*,int ,int ,int ) ;
 int mlx5e_sq_stats_desc ;
 int mlx5e_update_sq_inline (struct mlx5e_sq*) ;
 int snprintf (char*,int,char*,int,int) ;
 int wq ;

__attribute__((used)) static int
mlx5e_create_sq(struct mlx5e_channel *c,
    int tc,
    struct mlx5e_sq_param *param,
    struct mlx5e_sq *sq)
{
 struct mlx5e_priv *priv = c->priv;
 struct mlx5_core_dev *mdev = priv->mdev;
 char buffer[16];
 void *sqc = param->sqc;
 void *sqc_wq = MLX5_ADDR_OF(sqc, sqc, wq);
 int err;


 if ((err = -bus_dma_tag_create(
     bus_get_dma_tag(mdev->pdev->dev.bsddev),
     1,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MLX5E_MAX_TX_PAYLOAD_SIZE,
     MLX5E_MAX_TX_MBUF_FRAGS,
     MLX5E_MAX_TX_MBUF_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sq->dma_tag)))
  goto done;

 err = mlx5_alloc_map_uar(mdev, &sq->uar);
 if (err)
  goto err_free_dma_tag;

 err = mlx5_wq_cyc_create(mdev, &param->wq, sqc_wq, &sq->wq,
     &sq->wq_ctrl);
 if (err)
  goto err_unmap_free_uar;

 sq->wq.db = &sq->wq.db[MLX5_SND_DBR];
 sq->bf_buf_size = (1 << MLX5_CAP_GEN(mdev, log_bf_reg_size)) / 2;

 err = mlx5e_alloc_sq_db(sq);
 if (err)
  goto err_sq_wq_destroy;

 sq->mkey_be = cpu_to_be32(priv->mr.key);
 sq->ifp = priv->ifp;
 sq->priv = priv;
 sq->tc = tc;

 mlx5e_update_sq_inline(sq);

 snprintf(buffer, sizeof(buffer), "txstat%dtc%d", c->ix, tc);
 mlx5e_create_stats(&sq->stats.ctx, SYSCTL_CHILDREN(priv->sysctl_ifnet),
     buffer, mlx5e_sq_stats_desc, MLX5E_SQ_STATS_NUM,
     sq->stats.arg);

 return (0);

err_sq_wq_destroy:
 mlx5_wq_destroy(&sq->wq_ctrl);

err_unmap_free_uar:
 mlx5_unmap_free_uar(mdev, &sq->uar);

err_free_dma_tag:
 bus_dma_tag_destroy(sq->dma_tag);
done:
 return (err);
}
