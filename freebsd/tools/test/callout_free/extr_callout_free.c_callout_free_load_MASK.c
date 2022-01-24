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
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  callout_free ; 
 int /*<<< orphan*/  callout_free_arg ; 
 int /*<<< orphan*/ * callout_free_func ; 
 int /*<<< orphan*/  callout_free_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(module_t mod, int cmd, void *arg)
{
	int error;

	switch (cmd) {
	case MOD_LOAD:
		FUNC2(&callout_free_mutex, "callout_free", NULL, MTX_DEF);
		/*
		 * Do not pass CALLOUT_RETURNUNLOCKED so the callout
		 * subsystem will unlock the "destroyed" mutex.
		 */
		FUNC0(&callout_free, &callout_free_mutex, 0);
		FUNC3("callout_free_func = %p\n", callout_free_func);
		FUNC3("callout_free_arg = %p\n", &callout_free_arg);
		FUNC1(&callout_free, hz/10, callout_free_func,
		    &callout_free_arg);
		error = 0;
		break;

	case MOD_UNLOAD:
		error = 0;
		break;

	default:
		error = EOPNOTSUPP;
		break;
	}

	return (error);
}