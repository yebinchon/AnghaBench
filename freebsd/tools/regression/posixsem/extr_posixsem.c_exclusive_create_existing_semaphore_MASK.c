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
 int /*<<< orphan*/  EEXIST ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  TEST_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	semid_t id;

	if (FUNC2(&id, TEST_PATH, O_CREAT, 0777, 1) < 0) {
		FUNC0("ksem_open(O_CREAT)");
		return;
	}
	FUNC1(id);

	FUNC3(TEST_PATH, O_CREAT | O_EXCL, 0777, 1, EEXIST);

	FUNC4(TEST_PATH);
}