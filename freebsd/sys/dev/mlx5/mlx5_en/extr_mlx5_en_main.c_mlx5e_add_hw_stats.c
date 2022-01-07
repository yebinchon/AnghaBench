
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_priv {TYPE_1__* mdev; int sysctl_hw; int sysctl_ctx; } ;
struct TYPE_2__ {int board_id; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct mlx5e_priv*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int sysctl_firmware ;

__attribute__((used)) static void
mlx5e_add_hw_stats(struct mlx5e_priv *priv)
{
 SYSCTL_ADD_PROC(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_hw),
     OID_AUTO, "fw_version", CTLTYPE_STRING | CTLFLAG_RD, priv, 0,
     sysctl_firmware, "A", "HCA firmware version");

 SYSCTL_ADD_STRING(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_hw),
     OID_AUTO, "board_id", CTLFLAG_RD, priv->mdev->board_id, 0,
     "Board ID");
}
