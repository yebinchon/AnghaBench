
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlx4_en_priv {int port; TYPE_2__* mdev; } ;
struct TYPE_4__ {scalar_t__ tunnel_offload_mode; scalar_t__ dmfs_high_steer_mode; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;
struct TYPE_5__ {TYPE_3__* dev; } ;


 int DRV ;
 int MLX4_DOMAIN_NIC ;
 scalar_t__ MLX4_STEERING_DMFS_A0_STATIC ;
 scalar_t__ MLX4_TUNNEL_OFFLOAD_MODE_VXLAN ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,unsigned char*,long long) ;
 int en_err (struct mlx4_en_priv*,char*,int) ;
 int mlx4_tunnel_steer_add (TYPE_3__*,unsigned char*,int ,int,int ,scalar_t__*) ;

__attribute__((used)) static int mlx4_en_tunnel_steer_add(struct mlx4_en_priv *priv, unsigned char *addr,
        int qpn, u64 *reg_id)
{
 int err;

 if (priv->mdev->dev->caps.tunnel_offload_mode != MLX4_TUNNEL_OFFLOAD_MODE_VXLAN ||
     priv->mdev->dev->caps.dmfs_high_steer_mode == MLX4_STEERING_DMFS_A0_STATIC)
  return 0;

 err = mlx4_tunnel_steer_add(priv->mdev->dev, addr, priv->port, qpn,
        MLX4_DOMAIN_NIC, reg_id);
 if (err) {
  en_err(priv, "failed to add vxlan steering rule, err %d\n", err);
  return err;
 }
 en_dbg(DRV, priv, "added vxlan steering rule, mac %pM reg_id %llx\n", addr, (long long)*reg_id);
 return 0;
}
