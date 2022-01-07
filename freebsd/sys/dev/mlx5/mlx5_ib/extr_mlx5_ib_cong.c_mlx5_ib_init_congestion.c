
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_8__ {int dwork; int * arg; struct sysctl_ctx_list ctx; int lock; } ;
struct TYPE_5__ {struct sysctl_oid* oidp; } ;
struct TYPE_6__ {TYPE_1__ kobj; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct mlx5_ib_dev {TYPE_4__ congestion; TYPE_3__ ib_dev; int mdev; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_U64 ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_IB_CONG_PARAMS_NUM ;
 int MLX5_IB_CONG_STATS_NUM ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,int ,int,struct mlx5_ib_dev*,int,int *,char*,int ) ;
 int SYSCTL_ADD_U64 (struct sysctl_ctx_list*,int ,int ,int ,int,int *,int ,int ) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int cc_query_allowed ;
 int hz ;
 int * mlx5_ib_cong_params_desc ;
 int mlx5_ib_cong_params_handler ;
 int * mlx5_ib_cong_stats_desc ;
 int mlx5_ib_get_all_cc_params (struct mlx5_ib_dev*) ;
 int mlx5_ib_read_cong_stats ;
 int schedule_delayed_work (int *,int ) ;
 int sx_init (int *,char*) ;
 int sysctl_ctx_free (struct sysctl_ctx_list*) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;

int
mlx5_ib_init_congestion(struct mlx5_ib_dev *dev)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *parent;
 struct sysctl_oid *node;
 int err;
 u32 x;

 ctx = &dev->congestion.ctx;
 sysctl_ctx_init(ctx);
 sx_init(&dev->congestion.lock, "mlx5ibcong");
 INIT_DELAYED_WORK(&dev->congestion.dwork, mlx5_ib_read_cong_stats);

 if (!MLX5_CAP_GEN(dev->mdev, cc_query_allowed))
  return (0);

 err = mlx5_ib_get_all_cc_params(dev);
 if (err)
  return (err);

 parent = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(dev->ib_dev.dev.kobj.oidp),
     OID_AUTO, "cong", CTLFLAG_RW, ((void*)0), "Congestion control");
 if (parent == ((void*)0))
  return (-ENOMEM);

 node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(parent),
     OID_AUTO, "conf", CTLFLAG_RW, ((void*)0), "Configuration");
 if (node == ((void*)0)) {
  sysctl_ctx_free(&dev->congestion.ctx);
  return (-ENOMEM);
 }

 for (x = 0; x != MLX5_IB_CONG_PARAMS_NUM; x++) {
  SYSCTL_ADD_PROC(ctx,
      SYSCTL_CHILDREN(node), OID_AUTO,
      mlx5_ib_cong_params_desc[2 * x],
      CTLTYPE_U64 | CTLFLAG_RWTUN | CTLFLAG_MPSAFE,
      dev, x, &mlx5_ib_cong_params_handler, "QU",
      mlx5_ib_cong_params_desc[2 * x + 1]);
 }

 node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(parent),
     OID_AUTO, "stats", CTLFLAG_RD, ((void*)0), "Statistics");
 if (node == ((void*)0)) {
  sysctl_ctx_free(&dev->congestion.ctx);
  return (-ENOMEM);
 }

 for (x = 0; x != MLX5_IB_CONG_STATS_NUM; x++) {

  SYSCTL_ADD_U64(ctx, SYSCTL_CHILDREN(node), OID_AUTO,
      mlx5_ib_cong_stats_desc[2 * x],
      CTLFLAG_RD | CTLFLAG_MPSAFE,
      &dev->congestion.arg[x + MLX5_IB_CONG_PARAMS_NUM],
      0, mlx5_ib_cong_stats_desc[2 * x + 1]);
 }
 schedule_delayed_work(&dev->congestion.dwork, hz);
 return (0);
}
