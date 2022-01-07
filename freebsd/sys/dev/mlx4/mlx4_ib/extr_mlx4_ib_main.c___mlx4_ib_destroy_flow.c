
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_QP_FLOW_STEERING_DETACH ;
 int mlx4_cmd (struct mlx4_dev*,scalar_t__,int ,int ,int ,int ,int ) ;
 int pr_err (char*,long long) ;

__attribute__((used)) static int __mlx4_ib_destroy_flow(struct mlx4_dev *dev, u64 reg_id)
{
 int err;
 err = mlx4_cmd(dev, reg_id, 0, 0,
         MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
         MLX4_CMD_WRAPPED);
 if (err)
  pr_err("Fail to detach network rule. registration id = 0x%llx\n",
         (long long)reg_id);
 return err;
}
