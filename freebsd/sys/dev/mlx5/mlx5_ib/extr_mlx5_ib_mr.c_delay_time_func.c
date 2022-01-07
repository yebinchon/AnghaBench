
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {scalar_t__ fill_delay; } ;



__attribute__((used)) static void delay_time_func(unsigned long ctx)
{
 struct mlx5_ib_dev *dev = (struct mlx5_ib_dev *)ctx;

 dev->fill_delay = 0;
}
