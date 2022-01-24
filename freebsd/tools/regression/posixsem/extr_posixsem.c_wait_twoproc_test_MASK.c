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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  O_CREAT ; 
 int /*<<< orphan*/  TEST_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wait_twoproc_child ; 

__attribute__((used)) static void
FUNC11(void)
{
	semid_t id;
	int stat;

	if (FUNC7(&id, TEST_PATH, O_CREAT, 0777, 0)) {
		FUNC5("ksem_open");
		return;
	}

	if (FUNC10(id, 500) < 0) {
		FUNC6(id);
		FUNC8(TEST_PATH);
		return;
	}		

	if (FUNC3(wait_twoproc_child, NULL, &stat) < 0) {
		FUNC2(1);
		FUNC6(id);
		FUNC8(TEST_PATH);
		return;
	}

	errno = FUNC1(stat);
	switch (FUNC0(stat)) {
	case 0:
		FUNC9();
		break;
	case 1:
		FUNC5("child ksem_open()");
		break;
	case 2:
		FUNC5("child ksem_wait()");
		break;
	case 3:
		FUNC5("child ksem_close()");
		break;
	default:
		FUNC4("bad child state %#x", stat);
		break;
	}

	FUNC2(1);
	FUNC6(id);
	FUNC8(TEST_PATH);
}