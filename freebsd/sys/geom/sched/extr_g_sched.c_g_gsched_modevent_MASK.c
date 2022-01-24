#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct g_gsched_unregparm {int gup_error; struct g_gsched* gup_gsp; } ;
struct g_gsched {int /*<<< orphan*/  gs_name; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct g_gsched*) ; 
 int /*<<< orphan*/  g_gsched_unregister ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_sched_class ; 
 int FUNC4 (int /*<<< orphan*/ ,struct g_gsched_unregparm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(module_t mod, int cmd, void *arg)
{
	struct g_gsched *gsp = arg;
	struct g_gsched_unregparm parm;
	int error;

	FUNC0(0, "Modevent %d.", cmd);

	/*
	 * If the module is loaded at boot, the geom thread that calls
	 * g_sched_init() might actually run after g_gsched_modevent(),
	 * so make sure that the module is properly initialized.
	 */
	FUNC1();

	error = EOPNOTSUPP;
	switch (cmd) {
	case MOD_LOAD:
		error = FUNC2(gsp);
		FUNC0(0, "Loaded module %s error %d.",
		    gsp->gs_name, error);
		if (error == 0)
			FUNC3(&g_sched_class);
		break;

	case MOD_UNLOAD:
		parm.gup_gsp = gsp;
		parm.gup_error = 0;

		error = FUNC4(g_gsched_unregister,
		    &parm, M_WAITOK, NULL);
		if (error == 0)
			error = parm.gup_error;
		FUNC0(0, "Unloaded module %s error %d.",
		    gsp->gs_name, error);
		break;
	}

	return (error);
}