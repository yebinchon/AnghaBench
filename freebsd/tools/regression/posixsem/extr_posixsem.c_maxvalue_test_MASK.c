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
 int SEM_VALUE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{
	semid_t id;
	int val;

	if (FUNC4(&id, SEM_VALUE_MAX) < 0) {
		FUNC1("ksem_init");
		return;
	}
	if (FUNC3(id, &val) < 0) {
		FUNC1("ksem_getvalue");
		FUNC2(id);
		return;
	}
	if (val != SEM_VALUE_MAX) {
		FUNC0("value %d != SEM_VALUE_MAX");
		FUNC2(id);
		return;
	}
	if (val < 0) {
		FUNC0("value < 0");
		FUNC2(id);
		return;
	}
	if (FUNC2(id) < 0) {
		FUNC1("ksem_destroy");
		return;
	}
	FUNC5();
}