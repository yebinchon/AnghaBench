
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {unsigned int num_ports; } ;


 int mlx5_ib_dealloc_q_port_counter (struct mlx5_ib_dev*,unsigned int) ;

__attribute__((used)) static void mlx5_ib_dealloc_q_counters(struct mlx5_ib_dev *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_ports; i++)
  mlx5_ib_dealloc_q_port_counter(dev, i);
}
