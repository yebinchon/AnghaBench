
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_reg_pcap {int port_num; int caps_127_96; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_REG_PCAP ;
 int cpu_to_be32 (int ) ;
 int memset (struct mlx5_reg_pcap*,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,struct mlx5_reg_pcap*,int,struct mlx5_reg_pcap*,int,int ,int ,int) ;

int mlx5_set_port_caps(struct mlx5_core_dev *dev, u8 port_num, u32 caps)
{
 struct mlx5_reg_pcap in;
 struct mlx5_reg_pcap out;
 int err;

 memset(&in, 0, sizeof(in));
 in.caps_127_96 = cpu_to_be32(caps);
 in.port_num = port_num;

 err = mlx5_core_access_reg(dev, &in, sizeof(in), &out,
       sizeof(out), MLX5_REG_PCAP, 0, 1);

 return err;
}
