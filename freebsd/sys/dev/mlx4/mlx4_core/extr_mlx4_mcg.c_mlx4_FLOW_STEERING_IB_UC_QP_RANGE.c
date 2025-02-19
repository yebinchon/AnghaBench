
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_FLOW_STEERING_IB_UC_QP_RANGE ;
 int mlx4_cmd (struct mlx4_dev*,int,int ,int ,int ,int ,int ) ;

int mlx4_FLOW_STEERING_IB_UC_QP_RANGE(struct mlx4_dev *dev, u32 min_range_qpn,
          u32 max_range_qpn)
{
 int err;
 u64 in_param;

 in_param = ((u64) min_range_qpn) << 32;
 in_param |= ((u64) max_range_qpn) & 0xFFFFFFFF;

 err = mlx4_cmd(dev, in_param, 0, 0,
   MLX4_FLOW_STEERING_IB_UC_QP_RANGE,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

 return err;
}
