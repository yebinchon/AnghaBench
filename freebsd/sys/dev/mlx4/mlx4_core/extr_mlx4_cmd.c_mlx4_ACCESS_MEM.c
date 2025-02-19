
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ function; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int EINVAL ;
 int MLX4_CMD_ACCESS_MEM ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int mlx4_cmd_imm (struct mlx4_dev*,int,int*,int,int ,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*,unsigned long long,unsigned long long,int,int) ;

__attribute__((used)) static int mlx4_ACCESS_MEM(struct mlx4_dev *dev, u64 master_addr,
      int slave, u64 slave_addr,
      int size, int is_read)
{
 u64 in_param;
 u64 out_param;

 if ((slave_addr & 0xfff) | (master_addr & 0xfff) |
     (slave & ~0x7f) | (size & 0xff)) {
  mlx4_err(dev, "Bad access mem params - slave_addr:0x%llx "
         "master_addr:0x%llx slave_id:%d size:%d\n",
         (unsigned long long)slave_addr,
         (unsigned long long)master_addr, slave, size);
  return -EINVAL;
 }

 if (is_read) {
  in_param = (u64) slave | slave_addr;
  out_param = (u64) dev->caps.function | master_addr;
 } else {
  in_param = (u64) dev->caps.function | master_addr;
  out_param = (u64) slave | slave_addr;
 }

 return mlx4_cmd_imm(dev, in_param, &out_param, size, 0,
       MLX4_CMD_ACCESS_MEM,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
}
