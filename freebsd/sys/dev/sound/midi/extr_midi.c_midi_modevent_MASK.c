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

/* Variables and functions */
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static int
FUNC3(module_t mod, int type, void *data)
{
	int retval;

	retval = 0;

	switch (type) {
	case MOD_LOAD:
		retval = FUNC0();
		if (retval == 0)
			retval = FUNC2(mod, type, data);
		break;

	case MOD_UNLOAD:
		retval = FUNC1();
		if (retval == 0)
			retval = FUNC2(mod, type, data);
		break;

	default:
		break;
	}

	return retval;
}