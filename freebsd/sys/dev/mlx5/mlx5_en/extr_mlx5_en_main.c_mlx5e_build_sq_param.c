
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linear; scalar_t__ db_numa_node; scalar_t__ buf_numa_node; } ;
struct mlx5e_sq_param {TYPE_1__ wq; void* sqc; } ;
struct TYPE_4__ {int log_sq_size; } ;
struct mlx5e_priv {int pdn; TYPE_2__ params; } ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_SEND_WQE_BB ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int ilog2 (int ) ;
 int log_wq_stride ;
 int log_wq_sz ;
 int pd ;
 void* wq ;

__attribute__((used)) static void
mlx5e_build_sq_param(struct mlx5e_priv *priv,
    struct mlx5e_sq_param *param)
{
 void *sqc = param->sqc;
 void *wq = MLX5_ADDR_OF(sqc, sqc, wq);

 MLX5_SET(wq, wq, log_wq_sz, priv->params.log_sq_size);
 MLX5_SET(wq, wq, log_wq_stride, ilog2(MLX5_SEND_WQE_BB));
 MLX5_SET(wq, wq, pd, priv->pdn);

 param->wq.buf_numa_node = 0;
 param->wq.db_numa_node = 0;
 param->wq.linear = 1;
}
