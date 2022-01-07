
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;


 int find_first_bit (int ,int ) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;
 scalar_t__ test_bit (int,int ) ;

int mlx4_phys_to_slave_port(struct mlx4_dev *dev, int slave, int port)
{
 struct mlx4_active_ports actv_ports = mlx4_get_active_ports(dev, slave);
 if (test_bit(port - 1, actv_ports.ports))
  return port -
   find_first_bit(actv_ports.ports, dev->caps.num_ports);

 return -1;
}
