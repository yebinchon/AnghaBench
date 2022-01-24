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
struct wtap_plugin {TYPE_1__* wp_sdev; } ;
struct visibility_plugin {int /*<<< orphan*/  pl_mtx; } ;
struct TYPE_2__ {struct visibility_plugin* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  vis_cdevsw ; 

void
FUNC3(struct wtap_plugin *plugin)
{
	struct visibility_plugin *vis_plugin;

	vis_plugin = (struct visibility_plugin *) plugin;
	plugin->wp_sdev = FUNC0(&vis_cdevsw,0,UID_ROOT,GID_WHEEL,0600,
	    (const char *)"visctl");
	plugin->wp_sdev->si_drv1 = vis_plugin;
	FUNC1(&vis_plugin->pl_mtx, "visibility_plugin mtx",
	    NULL, MTX_DEF | MTX_RECURSE);
	FUNC2("Using visibility wtap plugin...\n");
}