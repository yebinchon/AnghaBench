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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	semid_t id;
	u_int elapsed;

	if (FUNC5(&id, 1) < 0) {
		FUNC3("ksem_init");
		return;
	}

	/* This should succeed right away and set the value to 0. */
	if (FUNC7(id, 5000, &elapsed, 0) < 0) {
		FUNC4(id);
		return;
	}
	if (!FUNC0(elapsed, 0)) {
		FUNC2("ksem_timedwait() of unlocked sem took %ums", elapsed);
		FUNC4(id);
		return;
	}
	if (FUNC1(id, 0) < 0) {
		FUNC4(id);
		return;
	}

	if (FUNC4(id) < 0) {
		FUNC3("ksem_destroy");
		return;
	}
	FUNC6();
}