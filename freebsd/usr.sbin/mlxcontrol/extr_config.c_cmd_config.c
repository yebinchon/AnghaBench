
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cc_num_sys_drives; } ;
struct conf_config {TYPE_1__ cc_cfg; } ;


 int bzero (TYPE_1__*,int) ;
 scalar_t__ mlx_read_configuration (int,TYPE_1__*) ;
 int print_phys_drive (struct conf_config*,int,int) ;
 int print_sys_drive (struct conf_config*,int) ;
 int printf (char*,...) ;

int
cmd_config(int argc, char *argv[])
{
    struct conf_config conf;
    int unit = 0;
    int i, j;

    bzero(&conf.cc_cfg, sizeof(conf.cc_cfg));
    if (mlx_read_configuration(unit, &conf.cc_cfg)) {
 printf("mlx%d: error submitting READ CONFIGURATION\n", unit);
    } else {

 printf("# Controller <INSERT DETAILS HERE>\n");
 printf("#\n# Physical devices connected:\n");
 for (i = 0; i < 5; i++)
     for (j = 0; j < 16; j++)
     print_phys_drive(&conf, i, j);
 printf("#\n# System Drives defined:\n");

 for (i = 0; i < conf.cc_cfg.cc_num_sys_drives; i++)
     print_sys_drive(&conf, i);
    }
    return(0);
}
