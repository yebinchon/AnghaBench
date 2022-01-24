#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx_sys_drv {int sd_raidlevel; int sd_valid_spans; int /*<<< orphan*/  sd_valid_arms; int /*<<< orphan*/ * sd_span; } ;
struct TYPE_2__ {struct mlx_sys_drv* cc_sys_drives; } ;
struct conf_config {TYPE_1__ cc_cfg; } ;

/* Variables and functions */
#define  MLX_SYS_DRV_JBOD 133 
#define  MLX_SYS_DRV_RAID0 132 
#define  MLX_SYS_DRV_RAID1 131 
#define  MLX_SYS_DRV_RAID3 130 
#define  MLX_SYS_DRV_RAID5 129 
#define  MLX_SYS_DRV_RAID6 128 
 int MLX_SYS_DRV_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct conf_config *conf, int drvno)
{
    struct mlx_sys_drv	*drv = &conf->cc_cfg.cc_sys_drives[drvno];
    int			i;

    FUNC1("drive%02d ", drvno);
    switch(drv->sd_raidlevel & 0xf) {
    case MLX_SYS_DRV_RAID0:
	FUNC1("RAID0");
	break;
    case MLX_SYS_DRV_RAID1:
	FUNC1("RAID1");
	break;
    case MLX_SYS_DRV_RAID3:
	FUNC1("RAID3");
	break;
    case MLX_SYS_DRV_RAID5:
	FUNC1("RAID5");
	break;
    case MLX_SYS_DRV_RAID6:
	FUNC1("RAID6");
	break;
    case MLX_SYS_DRV_JBOD:
	FUNC1("JBOD");
	break;
    default:
	FUNC1("RAID?");
    }
    FUNC1(" write%s\n", drv->sd_raidlevel & MLX_SYS_DRV_WRITEBACK ? "back" : "through");
    
    for (i = 0; i < drv->sd_valid_spans; i++) {
	FUNC1("  span%d ", i);
	FUNC0(&drv->sd_span[i], drv->sd_valid_arms);
    }
}