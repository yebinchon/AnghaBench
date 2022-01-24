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
struct tuntap_driver {int /*<<< orphan*/  unrhdr; int /*<<< orphan*/  clones; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IF_MAXUNIT ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/ * arrival_tag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * clone_tag ; 
 int /*<<< orphan*/  dev_clone ; 
 int /*<<< orphan*/  ifnet_arrival_event ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tuntap_driver*) ; 
 int /*<<< orphan*/  tunclone ; 
 int /*<<< orphan*/  tunmtx ; 
 int /*<<< orphan*/  tunrename ; 
 struct tuntap_driver* tuntap_drivers ; 

__attribute__((used)) static int
FUNC5(module_t mod, int type, void *data)
{
	struct tuntap_driver *drv;
	int i;

	switch (type) {
	case MOD_LOAD:
		FUNC2(&tunmtx, "tunmtx", NULL, MTX_DEF);
		for (i = 0; i < FUNC4(tuntap_drivers); ++i) {
			drv = &tuntap_drivers[i];
			FUNC1(&drv->clones);
			drv->unrhdr = FUNC3(0, IF_MAXUNIT, &tunmtx);
		}
		arrival_tag = FUNC0(ifnet_arrival_event,
		   tunrename, 0, 1000);
		if (arrival_tag == NULL)
			return (ENOMEM);
		clone_tag = FUNC0(dev_clone, tunclone, 0, 1000);
		if (clone_tag == NULL)
			return (ENOMEM);
		break;
	case MOD_UNLOAD:
		/* See tun_uninit, so it's done after the vnet_sysuninit() */
		break;
	default:
		return EOPNOTSUPP;
	}
	return 0;
}