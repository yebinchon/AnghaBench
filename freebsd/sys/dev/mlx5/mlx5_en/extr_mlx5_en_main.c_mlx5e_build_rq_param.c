
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_rx_wqe {int dummy; } ;
struct TYPE_4__ {int linear; scalar_t__ db_numa_node; scalar_t__ buf_numa_node; } ;
struct mlx5e_rq_param {TYPE_2__ wq; void* rqc; } ;
struct TYPE_3__ {int log_rq_size; } ;
struct mlx5e_priv {int pdn; TYPE_1__ params; } ;
struct mlx5_wqe_data_seg {int dummy; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int MLX5_WQ_END_PAD_MODE_ALIGN ;
 int MLX5_WQ_TYPE_LINKED_LIST ;
 int end_padding_mode ;
 int ilog2 (int) ;
 int log_wq_stride ;
 int log_wq_sz ;
 int mlx5e_get_wqe_sz (struct mlx5e_priv*,int*,int*) ;
 int pd ;
 void* wq ;
 int wq_type ;

__attribute__((used)) static void
mlx5e_build_rq_param(struct mlx5e_priv *priv,
    struct mlx5e_rq_param *param)
{
 void *rqc = param->rqc;
 void *wq = MLX5_ADDR_OF(rqc, rqc, wq);
 u32 wqe_sz, nsegs;

 mlx5e_get_wqe_sz(priv, &wqe_sz, &nsegs);
 MLX5_SET(wq, wq, wq_type, MLX5_WQ_TYPE_LINKED_LIST);
 MLX5_SET(wq, wq, end_padding_mode, MLX5_WQ_END_PAD_MODE_ALIGN);
 MLX5_SET(wq, wq, log_wq_stride, ilog2(sizeof(struct mlx5e_rx_wqe) +
     nsegs * sizeof(struct mlx5_wqe_data_seg)));
 MLX5_SET(wq, wq, log_wq_sz, priv->params.log_rq_size);
 MLX5_SET(wq, wq, pd, priv->pdn);

 param->wq.buf_numa_node = 0;
 param->wq.db_numa_node = 0;
 param->wq.linear = 1;
}
