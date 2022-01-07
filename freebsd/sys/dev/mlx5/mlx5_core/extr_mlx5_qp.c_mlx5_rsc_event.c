
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_rsc_common {int res; } ;
struct mlx5_core_qp {int (* event ) (struct mlx5_core_qp*,int) ;} ;
struct mlx5_core_dev {int dummy; } ;



 int mlx5_core_put_rsc (struct mlx5_core_rsc_common*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 struct mlx5_core_rsc_common* mlx5_get_rsc (struct mlx5_core_dev*,int ) ;
 int stub1 (struct mlx5_core_qp*,int) ;

void mlx5_rsc_event(struct mlx5_core_dev *dev, u32 rsn, int event_type)
{
 struct mlx5_core_rsc_common *common = mlx5_get_rsc(dev, rsn);
 struct mlx5_core_qp *qp;

 if (!common)
  return;

 switch (common->res) {
 case 128:
  qp = (struct mlx5_core_qp *)common;
  qp->event(qp, event_type);
  break;

 default:
  mlx5_core_warn(dev, "invalid resource type for 0x%x\n", rsn);
 }

 mlx5_core_put_rsc(common);
}
