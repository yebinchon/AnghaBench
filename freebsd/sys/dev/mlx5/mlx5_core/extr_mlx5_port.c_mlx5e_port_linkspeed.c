
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_port_eth_proto {int oper; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int mlx5_port_query_eth_proto (struct mlx5_core_dev*,int,int,struct mlx5e_port_eth_proto*) ;
 int mlx5e_port_ptys2speed (struct mlx5_core_dev*,int ) ;
 int ptys_extended_ethernet ;

int mlx5e_port_linkspeed(struct mlx5_core_dev *mdev, u32 *speed)
{
 struct mlx5e_port_eth_proto eproto;
 bool ext;
 int err;

 ext = MLX5_CAP_PCAM_FEATURE(mdev, ptys_extended_ethernet);
 err = mlx5_port_query_eth_proto(mdev, 1, ext, &eproto);
 if (err)
  goto out;

 *speed = mlx5e_port_ptys2speed(mdev, eproto.oper);
 if (!(*speed))
  err = -EINVAL;

out:
 return err;
}
