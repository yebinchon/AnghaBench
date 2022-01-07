
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_QP_FLOW_STEERING_DETACH ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_QP_FLOW_STEERING_DETACH(struct mlx4_dev *dev, u64 regid)
{
 int err = 0;

 err = mlx4_cmd(dev, regid, 0, 0,
         MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
         MLX4_CMD_NATIVE);

 return err;
}
