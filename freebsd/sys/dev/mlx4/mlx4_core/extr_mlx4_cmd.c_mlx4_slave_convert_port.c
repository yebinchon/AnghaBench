
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;


 int EINVAL ;
 unsigned int bitmap_weight (int ,int ) ;
 unsigned int find_first_bit (int ,int ) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;

int mlx4_slave_convert_port(struct mlx4_dev *dev, int slave, int port)
{
 unsigned n;
 struct mlx4_active_ports actv_ports = mlx4_get_active_ports(dev, slave);
 unsigned m = bitmap_weight(actv_ports.ports, dev->caps.num_ports);

 if (port <= 0 || port > m)
  return -EINVAL;

 n = find_first_bit(actv_ports.ports, dev->caps.num_ports);
 if (port <= n)
  port = n + 1;

 return port;
}
