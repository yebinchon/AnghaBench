
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_phys_drv {int pd_flags1; } ;
struct TYPE_2__ {struct mlx_phys_drv* cc_phys_drives; } ;
struct conf_config {TYPE_1__ cc_cfg; } ;


 int MLX_PHYS_DRV_PRESENT ;
 int mlx_print_phys_drv (struct mlx_phys_drv*,int,int,char*,int) ;

__attribute__((used)) static void
print_phys_drive(struct conf_config *conf, int chn, int targ)
{
    struct mlx_phys_drv *drv = &conf->cc_cfg.cc_phys_drives[chn * 16 + targ];


    if (!(drv->pd_flags1 & MLX_PHYS_DRV_PRESENT))
 return;

    mlx_print_phys_drv(drv, chn, targ, "# ", 1);
}
