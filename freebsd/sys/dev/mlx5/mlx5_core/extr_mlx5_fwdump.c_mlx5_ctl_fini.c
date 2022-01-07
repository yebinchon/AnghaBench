
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int *) ;
 int * mlx5_ctl_dev ;

void
mlx5_ctl_fini(void)
{

 if (mlx5_ctl_dev != ((void*)0))
  destroy_dev(mlx5_ctl_dev);

}
