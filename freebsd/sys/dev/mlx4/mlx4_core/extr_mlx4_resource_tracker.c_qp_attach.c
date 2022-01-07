
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
typedef enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int EINVAL ;
 int MLX4_PROT_ETH ;


 int mlx4_qp_attach_common (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;
 int mlx4_trans_to_dmfs_attach (struct mlx4_dev*,struct mlx4_qp*,int*,int,int,int,int *) ;

__attribute__((used)) static int qp_attach(struct mlx4_dev *dev, int slave, struct mlx4_qp *qp,
       u8 gid[16], int block_loopback, enum mlx4_protocol prot,
       enum mlx4_steer_type type, u64 *reg_id)
{
 switch (dev->caps.steering_mode) {
 case 128: {
  int port = mlx4_slave_convert_port(dev, slave, gid[5]);
  if (port < 0)
   return port;
  return mlx4_trans_to_dmfs_attach(dev, qp, gid, port,
      block_loopback, prot,
      reg_id);
 }
 case 129:
  if (prot == MLX4_PROT_ETH) {
   int port = mlx4_slave_convert_port(dev, slave, gid[5]);
   if (port < 0)
    return port;
   gid[5] = port;
  }
  return mlx4_qp_attach_common(dev, qp, gid,
         block_loopback, prot, type);
 default:
  return -EINVAL;
 }
}
