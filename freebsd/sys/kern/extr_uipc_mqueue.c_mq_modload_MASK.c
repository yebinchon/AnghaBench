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
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (struct module*,int,void*) ; 

__attribute__((used)) static int
FUNC3(struct module *module, int cmd, void *arg)
{
	int error = 0;

	error = FUNC2(module, cmd, arg);
	if (error != 0)
		return (error);

	switch (cmd) {
	case MOD_LOAD:
		error = FUNC0();
		if (error != 0)
			FUNC1();
		break;
	case MOD_UNLOAD:
		error = FUNC1();
		break;
	default:
		break;
	}
	return (error);
}