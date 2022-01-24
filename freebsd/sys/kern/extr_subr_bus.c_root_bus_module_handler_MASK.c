#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/  kobj_class_t ;
struct TYPE_4__ {char* desc; int /*<<< orphan*/  state; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_ATTACHED ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FALSE ; 
#define  MOD_LOAD 129 
#define  MOD_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_data_devices ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* root_bus ; 
 int /*<<< orphan*/  root_devclass ; 
 int /*<<< orphan*/  root_driver ; 

__attribute__((used)) static int
FUNC7(module_t mod, int what, void* arg)
{
	switch (what) {
	case MOD_LOAD:
		FUNC0(&bus_data_devices);
		FUNC4((kobj_class_t) &root_driver);
		root_bus = FUNC6(NULL, "root", 0);
		root_bus->desc = "System root bus";
		FUNC5((kobj_t) root_bus, (kobj_class_t) &root_driver);
		root_bus->driver = &root_driver;
		root_bus->state = DS_ATTACHED;
		root_devclass = FUNC1("root", NULL, FALSE);
		FUNC3();
		return (0);

	case MOD_SHUTDOWN:
		FUNC2(root_bus);
		return (0);
	default:
		return (EOPNOTSUPP);
	}

	return (0);
}