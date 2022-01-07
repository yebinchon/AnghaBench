
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct mlx4_qp {int qpn; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_2__ {int steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int ETH_ALEN ;
 int MLX4_PROT_ETH ;


 int en_err (struct mlx4_en_priv*,char*) ;
 int memcpy (int *,unsigned char*,int ) ;
 int mlx4_flow_detach (struct mlx4_dev*,int ) ;
 int mlx4_unicast_detach (struct mlx4_dev*,struct mlx4_qp*,int *,int ) ;

__attribute__((used)) static void mlx4_en_uc_steer_release(struct mlx4_en_priv *priv,
         unsigned char *mac, int qpn, u64 reg_id)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_dev *dev = mdev->dev;

 switch (dev->caps.steering_mode) {
 case 129: {
  struct mlx4_qp qp;
  u8 gid[16] = {0};

  qp.qpn = qpn;
  memcpy(&gid[10], mac, ETH_ALEN);
  gid[5] = priv->port;

  mlx4_unicast_detach(dev, &qp, gid, MLX4_PROT_ETH);
  break;
 }
 case 128: {
  mlx4_flow_detach(dev, reg_id);
  break;
 }
 default:
  en_err(priv, "Invalid steering mode.\n");
 }
}
