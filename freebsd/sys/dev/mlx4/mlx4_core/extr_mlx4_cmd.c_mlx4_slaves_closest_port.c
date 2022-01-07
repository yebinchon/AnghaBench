
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int ports; } ;


 int bitmap_weight (int ,int ) ;
 int find_first_bit (int ,int ) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;

__attribute__((used)) static int mlx4_slaves_closest_port(struct mlx4_dev *dev, int slave, int port)
{
 struct mlx4_active_ports actv_ports = mlx4_get_active_ports(dev, slave);
 int min_port = find_first_bit(actv_ports.ports, dev->caps.num_ports)
   + 1;
 int max_port = min_port +
  bitmap_weight(actv_ports.ports, dev->caps.num_ports);

 if (port < min_port)
  port = min_port;
 else if (port >= max_port)
  port = max_port - 1;

 return port;
}
