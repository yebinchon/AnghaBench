
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_context {int dummy; } ;
struct mlx4_qp {int dummy; } ;
struct mlx4_mtt {int dummy; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_qp_state { ____Placeholder_mlx4_qp_state } mlx4_qp_state ;
typedef enum mlx4_qp_optpar { ____Placeholder_mlx4_qp_optpar } mlx4_qp_optpar ;


 int __mlx4_qp_modify (struct mlx4_dev*,struct mlx4_mtt*,int,int,struct mlx4_qp_context*,int,int,struct mlx4_qp*,int ) ;

int mlx4_qp_modify(struct mlx4_dev *dev, struct mlx4_mtt *mtt,
     enum mlx4_qp_state cur_state, enum mlx4_qp_state new_state,
     struct mlx4_qp_context *context,
     enum mlx4_qp_optpar optpar,
     int sqd_event, struct mlx4_qp *qp)
{
 return __mlx4_qp_modify(dev, mtt, cur_state, new_state, context,
    optpar, sqd_event, qp, 0);
}
