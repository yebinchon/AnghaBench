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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
#define  MOD_LOAD 131 
#define  MOD_QUIESCE 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  ald_mtx ; 
 int /*<<< orphan*/  ald_queues ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ald_shutingdown ; 
 int /*<<< orphan*/  alq_eventhandler_tag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 

__attribute__((used)) static int
FUNC6(module_t mod, int what, void *arg)
{
	int ret;
	
	ret = 0;

	switch (what) {
	case MOD_LOAD:
	case MOD_SHUTDOWN:
		break;

	case MOD_QUIESCE:
		FUNC0();
		/* Only allow unload if there are no open queues. */
		if (FUNC3(&ald_queues) == NULL) {
			ald_shutingdown = 1;
			FUNC1();
			FUNC2(shutdown_pre_sync,
			    alq_eventhandler_tag);
			FUNC4(NULL, 0);
			FUNC5(&ald_mtx);
		} else {
			FUNC1();
			ret = EBUSY;
		}
		break;

	case MOD_UNLOAD:
		/* If MOD_QUIESCE failed we must fail here too. */
		if (ald_shutingdown == 0)
			ret = EBUSY;
		break;

	default:
		ret = EINVAL;
		break;
	}

	return (ret);
}