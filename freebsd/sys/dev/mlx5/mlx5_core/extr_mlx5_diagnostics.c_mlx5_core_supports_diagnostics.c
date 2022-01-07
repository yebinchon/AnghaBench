
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int counter_id; } ;


 scalar_t__ MLX5_CAP_DEBUG (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int debug ;
 TYPE_1__* diagnostic_counter ;
 int num_of_diagnostic_counters ;

int mlx5_core_supports_diagnostics(struct mlx5_core_dev *dev, u16 counter_id)
{
 int numcounters;
 int x;

 if (MLX5_CAP_GEN(dev, debug) == 0)
  return 0;


 if (counter_id == 0)
  return 1;

 numcounters = MLX5_CAP_GEN(dev, num_of_diagnostic_counters);


 for (x = 0; x != numcounters; x++) {
  if (MLX5_CAP_DEBUG(dev, diagnostic_counter[x].counter_id) ==
      counter_id)
   return 1;
 }
 return 0;
}
