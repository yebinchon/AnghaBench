
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; scalar_t__* port_type; int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int EN_DRV_NAME ;
 int IB_DRV_NAME ;
 int MLX4_DEV_CAP_FLAG_IBOE ;
 scalar_t__ MLX4_PORT_TYPE_ETH ;
 scalar_t__ MLX4_PORT_TYPE_IB ;
 int request_module_nowait (int ) ;

__attribute__((used)) static void mlx4_request_modules(struct mlx4_dev *dev)
{
 int port;
 int has_ib_port = 0;
 int has_eth_port = 0;



 for (port = 1; port <= dev->caps.num_ports; port++) {
  if (dev->caps.port_type[port] == MLX4_PORT_TYPE_IB)
   has_ib_port = 1;
  else if (dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH)
   has_eth_port = 1;
 }

 if (has_eth_port)
  request_module_nowait("mlx4_en");
 if (has_ib_port || (dev->caps.flags & MLX4_DEV_CAP_FLAG_IBOE))
  request_module_nowait("mlx4_ib");
}
