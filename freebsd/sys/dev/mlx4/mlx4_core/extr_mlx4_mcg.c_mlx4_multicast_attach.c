
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct mlx4_qp {int dummy; } ;
struct TYPE_2__ {int steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int EINVAL ;
 int MLX4_MC_STEER ;
 int MLX4_PROT_ETH ;



 int mlx4_QP_ATTACH (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ;
 int mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_qp_attach_common (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ;
 int mlx4_trans_to_dmfs_attach (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int,int *) ;

int mlx4_multicast_attach(struct mlx4_dev *dev, struct mlx4_qp *qp, u8 gid[16],
     u8 port, int block_mcast_loopback,
     enum mlx4_protocol prot, u64 *reg_id)
{
 switch (dev->caps.steering_mode) {
 case 130:
  if (prot == MLX4_PROT_ETH)
   return 0;

 case 129:
  if (prot == MLX4_PROT_ETH)
   gid[7] |= (MLX4_MC_STEER << 1);

  if (mlx4_is_mfunc(dev))
   return mlx4_QP_ATTACH(dev, qp, gid, 1,
           block_mcast_loopback, prot);
  return mlx4_qp_attach_common(dev, qp, gid,
          block_mcast_loopback, prot,
          MLX4_MC_STEER);

 case 128:
  return mlx4_trans_to_dmfs_attach(dev, qp, gid, port,
       block_mcast_loopback,
       prot, reg_id);
 default:
  return -EINVAL;
 }
}
