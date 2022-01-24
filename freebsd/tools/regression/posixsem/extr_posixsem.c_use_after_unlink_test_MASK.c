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
typedef  int /*<<< orphan*/  semid_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  TEST_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
{
	semid_t id;

	/*
	 * Create named semaphore with value of 1 and then unlink it
	 * while still retaining the initial reference.
	 */
	if (FUNC3(&id, TEST_PATH, O_CREAT | O_EXCL, 0777, 1) < 0) {
		FUNC1("ksem_open(O_CREAT | O_EXCL)");
		return;
	}
	if (FUNC5(TEST_PATH) < 0) {
		FUNC1("ksem_unlink");
		FUNC2(id);
		return;
	}
	if (FUNC0(id, 1) < 0) {
		FUNC2(id);
		return;
	}

	/* Post the semaphore to set its value to 2. */
	if (FUNC4(id) < 0) {
		FUNC1("ksem_post");
		FUNC2(id);
		return;
	}
	if (FUNC0(id, 2) < 0) {
		FUNC2(id);
		return;
	}

	/* Wait on the semaphore which should set its value to 1. */
	if (FUNC6(id) < 0) {
		FUNC1("ksem_wait");
		FUNC2(id);
		return;
	}
	if (FUNC0(id, 1) < 0) {
		FUNC2(id);
		return;
	}

	if (FUNC2(id) < 0) {
		FUNC1("ksem_close");
		return;
	}
	FUNC7();
}