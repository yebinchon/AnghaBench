
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_sys_drv {int sd_raidlevel; int sd_valid_spans; int sd_valid_arms; int * sd_span; } ;
struct TYPE_2__ {struct mlx_sys_drv* cc_sys_drives; } ;
struct conf_config {TYPE_1__ cc_cfg; } ;
 int MLX_SYS_DRV_WRITEBACK ;
 int print_span (int *,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_sys_drive(struct conf_config *conf, int drvno)
{
    struct mlx_sys_drv *drv = &conf->cc_cfg.cc_sys_drives[drvno];
    int i;

    printf("drive%02d ", drvno);
    switch(drv->sd_raidlevel & 0xf) {
    case 132:
 printf("RAID0");
 break;
    case 131:
 printf("RAID1");
 break;
    case 130:
 printf("RAID3");
 break;
    case 129:
 printf("RAID5");
 break;
    case 128:
 printf("RAID6");
 break;
    case 133:
 printf("JBOD");
 break;
    default:
 printf("RAID?");
    }
    printf(" write%s\n", drv->sd_raidlevel & MLX_SYS_DRV_WRITEBACK ? "back" : "through");

    for (i = 0; i < drv->sd_valid_spans; i++) {
 printf("  span%d ", i);
 print_span(&drv->sd_span[i], drv->sd_valid_arms);
    }
}
