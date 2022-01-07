
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_config_dev {int roce_v2_udp_dport; int update_flags; } ;
typedef int config_dev ;


 int MLX4_ROCE_V2_UDP_DPORT ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int memset (struct mlx4_config_dev*,int ,int) ;
 int mlx4_CONFIG_DEV_set (struct mlx4_dev*,struct mlx4_config_dev*) ;

int mlx4_config_roce_v2_port(struct mlx4_dev *dev, u16 udp_port)
{
 struct mlx4_config_dev config_dev;

 memset(&config_dev, 0, sizeof(config_dev));
 config_dev.update_flags = cpu_to_be32(MLX4_ROCE_V2_UDP_DPORT);
 config_dev.roce_v2_udp_dport = cpu_to_be16(udp_port);

 return mlx4_CONFIG_DEV_set(dev, &config_dev);
}
