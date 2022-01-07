
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_3__ {int sensor_warning_lsb; int sensor_warning_msb; } ;
struct TYPE_4__ {TYPE_1__ temp_warning; } ;
struct mlx5_eqe {TYPE_2__ data; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ be64_to_cpu (int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ,int ) ;

__attribute__((used)) static void
mlx5_temp_warning_event(struct mlx5_core_dev *dev, struct mlx5_eqe *eqe)
{

 mlx5_core_warn(dev,
     "High temperature on sensors with bit set %#jx %#jx\n",
     (uintmax_t)be64_to_cpu(eqe->data.temp_warning.sensor_warning_msb),
     (uintmax_t)be64_to_cpu(eqe->data.temp_warning.sensor_warning_lsb));
}
