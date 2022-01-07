
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_counters; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_MAX_PORTS ;
 int MLX4_PF_COUNTERS_PER_PORT ;

__attribute__((used)) static int get_max_gauranteed_vfs_counter(struct mlx4_dev *dev)
{

 return (dev->caps.max_counters - 1 -
  (MLX4_PF_COUNTERS_PER_PORT * MLX4_MAX_PORTS))
  / MLX4_MAX_PORTS;
}
