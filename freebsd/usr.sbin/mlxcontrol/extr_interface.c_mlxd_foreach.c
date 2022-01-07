
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxd_foreach_action {void (* func ) (int,void*) ;void* arg; } ;


 int mlx_foreach (int ,struct mlxd_foreach_action*) ;
 int mlxd_foreach_ctrlr ;

void
mlxd_foreach(void (*func)(int unit, void *arg), void *arg)
{
    struct mlxd_foreach_action ma;

    ma.func = func;
    ma.arg = arg;
    mlx_foreach(mlxd_foreach_ctrlr, &ma);
}
