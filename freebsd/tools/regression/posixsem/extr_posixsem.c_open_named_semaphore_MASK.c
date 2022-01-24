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
 int /*<<< orphan*/  O_CREAT ; 
 int /*<<< orphan*/  TEST_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
	semid_t id;

	if (FUNC2(&id, TEST_PATH, O_CREAT, 0777, 1) < 0) {
		FUNC0("ksem_open(O_CREAT)");
		return;
	}

	if (FUNC1(id) < 0) {
		FUNC0("ksem_close");
		return;
	}

	if (FUNC3(TEST_PATH) < 0) {
		FUNC0("ksem_unlink");
		return;
	}
	FUNC4();
}