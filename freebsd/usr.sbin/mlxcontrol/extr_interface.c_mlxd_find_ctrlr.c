
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unit; int ctrlr; int sysdrive; } ;


 int mlx_foreach (int ,int *) ;
 TYPE_1__ mlxd_find_ctrlr_param ;
 int mlxd_find_ctrlr_search ;

int
mlxd_find_ctrlr(int unit, int *ctrlr, int *sysdrive)
{
    mlxd_find_ctrlr_param.unit = unit;
    mlxd_find_ctrlr_param.ctrlr = -1;
    mlxd_find_ctrlr_param.sysdrive = -1;

    mlx_foreach(mlxd_find_ctrlr_search, ((void*)0));
    if ((mlxd_find_ctrlr_param.ctrlr != -1) && (mlxd_find_ctrlr_param.sysdrive != -1)) {
 *ctrlr = mlxd_find_ctrlr_param.ctrlr;
 *sysdrive = mlxd_find_ctrlr_param.sysdrive;
 return(0);
    }
    return(1);
}
