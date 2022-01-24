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
 scalar_t__ EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	semid_t id;

	if (FUNC4(&id, 0) < 0) {
		FUNC2("ksem_init");
		return;
	}

	/* This should fail with EAGAIN and leave the value at 0. */
	if (FUNC5(id) >= 0) {
		FUNC1("ksem_trywait() didn't fail");
		FUNC3(id);
		return;
	}
	if (errno != EAGAIN) {
		FUNC2("wrong error from ksem_trywait()");
		FUNC3(id);
		return;
	}
	if (FUNC0(id, 0) < 0) {
		FUNC3(id);
		return;
	}

	if (FUNC3(id) < 0) {
		FUNC2("ksem_destroy");
		return;
	}
	FUNC6();
}