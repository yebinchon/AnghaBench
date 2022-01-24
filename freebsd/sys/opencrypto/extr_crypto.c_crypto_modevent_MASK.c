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
 int EINVAL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(module_t mod, int type, void *unused)
{
	int error = EINVAL;

	switch (type) {
	case MOD_LOAD:
		error = FUNC1();
		if (error == 0 && bootverbose)
			FUNC2("crypto: <crypto core>\n");
		break;
	case MOD_UNLOAD:
		/*XXX disallow if active sessions */
		error = 0;
		FUNC0();
		return 0;
	}
	return error;
}