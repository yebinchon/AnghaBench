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
#define  MOD_LOAD 130 
#define  MOD_QUIESCE 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static int
FUNC3(module_t mod, int what, void *arg)
{
	int error;

	switch (what) {
	case MOD_LOAD:
		error = FUNC0();
		break;
	case MOD_UNLOAD:
		error = FUNC2();
		break;
	case MOD_QUIESCE:
		error = FUNC1();
		break;
	default:
		error = EINVAL;
		break;
	}
	return (error);
}