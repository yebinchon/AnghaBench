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
struct driver_module_data {int (* dmd_chainevh ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int dmd_pass; int /*<<< orphan*/  dmd_chainarg; int /*<<< orphan*/  dmd_driver; int /*<<< orphan*/  dmd_busname; int /*<<< orphan*/  dmd_devclass; } ;
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 130 
#define  MOD_QUIESCE 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC9(module_t mod, int what, void *arg)
{
	struct driver_module_data *dmd;
	devclass_t bus_devclass;
	kobj_class_t driver;
	int error, pass;

	dmd = (struct driver_module_data *)arg;
	bus_devclass = FUNC4(dmd->dmd_busname, NULL, TRUE);
	error = 0;

	switch (what) {
	case MOD_LOAD:
		if (dmd->dmd_chainevh)
			error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);

		pass = dmd->dmd_pass;
		driver = dmd->dmd_driver;
		FUNC1(("Loading module: driver %s on bus %s (pass %d)",
		    FUNC0(driver), dmd->dmd_busname, pass));
		error = FUNC2(bus_devclass, driver, pass,
		    dmd->dmd_devclass);
		break;

	case MOD_UNLOAD:
		FUNC1(("Unloading module: driver %s from bus %s",
		    FUNC0(dmd->dmd_driver),
		    dmd->dmd_busname));
		error = FUNC3(bus_devclass,
		    dmd->dmd_driver);

		if (!error && dmd->dmd_chainevh)
			error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);
		break;
	case MOD_QUIESCE:
		FUNC1(("Quiesce module: driver %s from bus %s",
		    FUNC0(dmd->dmd_driver),
		    dmd->dmd_busname));
		error = FUNC5(bus_devclass,
		    dmd->dmd_driver);

		if (!error && dmd->dmd_chainevh)
			error = dmd->dmd_chainevh(mod,what,dmd->dmd_chainarg);
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}