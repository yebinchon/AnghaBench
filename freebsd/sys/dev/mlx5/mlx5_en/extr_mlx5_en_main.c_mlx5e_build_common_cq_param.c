
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct mlx5e_priv {TYPE_1__ cq_uar; } ;
struct mlx5e_cq_param {void* cqc; } ;


 int MLX5_SET (void*,void*,int ,int ) ;
 int uar_page ;

__attribute__((used)) static void
mlx5e_build_common_cq_param(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param)
{
 void *cqc = param->cqc;

 MLX5_SET(cqc, cqc, uar_page, priv->cq_uar.index);
}
