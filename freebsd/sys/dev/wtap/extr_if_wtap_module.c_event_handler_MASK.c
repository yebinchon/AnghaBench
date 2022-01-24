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
struct wtap_plugin {int dummy; } ;
struct wtap_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  deinit; int /*<<< orphan*/  init; struct wtap_hal* wp_hal; } ;
struct visibility_plugin {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GID_WHEEL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WTAP ; 
 int /*<<< orphan*/  M_WTAP_PLUGIN ; 
 int M_ZERO ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct wtap_hal*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wtap_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct wtap_hal*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wtap_hal*,int /*<<< orphan*/ ) ; 
 struct wtap_hal* hal ; 
 int /*<<< orphan*/  FUNC5 (struct wtap_hal*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct wtap_hal*,struct wtap_plugin*) ; 
 int /*<<< orphan*/  sdev ; 
 int /*<<< orphan*/  visibility_deinit ; 
 int /*<<< orphan*/  visibility_init ; 
 int /*<<< orphan*/  visibility_work ; 
 int /*<<< orphan*/  wtap_cdevsw ; 

__attribute__((used)) static int
FUNC10(module_t module, int event, void *arg) 
{
	struct visibility_plugin *plugin;
	int e = 0; /* Error, 0 for normal return status */

	switch (event) {
	case MOD_LOAD:
		sdev = FUNC6(&wtap_cdevsw,0,UID_ROOT,
		    GID_WHEEL,0600,(const char *)"wtapctl");
		hal = (struct wtap_hal *)FUNC7(sizeof(struct wtap_hal),
		    M_WTAP, M_NOWAIT | M_ZERO);
		FUNC0(hal, sizeof(struct wtap_hal));

		FUNC5(hal);

		/* Setting up a simple plugin */
		plugin = (struct visibility_plugin *)FUNC7
		    (sizeof(struct visibility_plugin), M_WTAP_PLUGIN,
		    M_NOWAIT | M_ZERO);
		plugin->base.wp_hal  = hal;
		plugin->base.init = visibility_init;
		plugin->base.deinit = visibility_deinit;
		plugin->base.work = visibility_work;
		FUNC9(hal, (struct wtap_plugin *)plugin);

                FUNC8("Loaded wtap wireless simulator\n");
                break;
	case MOD_UNLOAD:
		FUNC3(sdev);
		FUNC2(hal);
		FUNC1(hal);
		FUNC4(hal, M_WTAP);
		FUNC8("Unloading wtap wireless simulator\n");
		break;
	default:
		e = EOPNOTSUPP; /* Error, Operation Not Supported */
		break;
	}

	return(e);
}