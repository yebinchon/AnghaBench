#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cc_num_sys_drives; } ;
struct conf_config {TYPE_1__ cc_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct conf_config*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct conf_config*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(int argc, char *argv[]) 
{
    struct conf_config	conf;
    int			unit = 0;	/* XXX */
    int			i, j;

    FUNC0(&conf.cc_cfg, sizeof(conf.cc_cfg));
    if (FUNC1(unit, &conf.cc_cfg)) {
	FUNC4("mlx%d: error submitting READ CONFIGURATION\n", unit);
    } else {

	FUNC4("# Controller <INSERT DETAILS HERE>\n");
	FUNC4("#\n# Physical devices connected:\n");
	for (i = 0; i < 5; i++)
	    for (j = 0; j < 16; j++)
	    FUNC2(&conf, i, j);
	FUNC4("#\n# System Drives defined:\n");

	for (i = 0; i < conf.cc_cfg.cc_num_sys_drives; i++)
	    FUNC3(&conf, i);
    }
    return(0);
}