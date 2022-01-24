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
struct module {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(struct module *module, int cmd, void *arg)
{
	int error = 0;

	switch (cmd) {
	case MOD_LOAD:
		error = FUNC0();
		if (error != 0)
			FUNC1();
		break;
	case MOD_UNLOAD:
		error = FUNC1();
		break;
	case MOD_SHUTDOWN:
		break;
	default:
		error = EINVAL;
		break;
	}
	return (error);
}