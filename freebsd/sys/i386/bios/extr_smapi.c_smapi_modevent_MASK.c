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
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smapi_devclass ; 

__attribute__((used)) static int
FUNC4 (module_t mod, int what, void *arg)
{
	device_t *	devs;
	int		count;
	int		i;

	switch (what) {
	case MOD_LOAD:
		break;
	case MOD_UNLOAD:
		FUNC0(smapi_devclass, &devs, &count);
		for (i = 0; i < count; i++) {
			FUNC1(FUNC2(devs[i]), devs[i]);
		}
		FUNC3(devs, M_TEMP);
		break;
	default:
		break;
	}

	return (0);
}