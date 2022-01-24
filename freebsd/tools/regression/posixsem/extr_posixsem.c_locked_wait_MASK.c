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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void)
{
	semid_t id;
	u_int elapsed;

	if (FUNC5(&id, 0) < 0) {
		FUNC3("ksem_init");
		return;
	}

	/*
	 * Schedule a post to trigger after 1000 ms.  The subsequent
	 * wait should succeed after 1000 ms as a result.
	 */
	if (FUNC7(id, 1000) < 0) {
		FUNC4(id);
		return;
	}
	if (FUNC8(id, &elapsed) < 0) {
		FUNC1(1);
		FUNC4(id);
		return;
	}
	if (!FUNC0(elapsed, 1000)) {
		FUNC2(
	    "ksem_wait() with delayed post took %ums instead of 1000ms",
		    elapsed);
		FUNC1(1);
		FUNC4(id);
		return;
	}
	if (FUNC1(0) < 0) {
		FUNC4(id);
		return;
	}

	if (FUNC4(id) < 0) {
		FUNC3("ksem_destroy");
		return;
	}
	FUNC6();
}