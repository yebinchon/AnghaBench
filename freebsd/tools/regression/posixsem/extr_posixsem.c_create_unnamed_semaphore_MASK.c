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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
	semid_t id;

	if (FUNC2(&id, 1) < 0) {
		FUNC0("ksem_init");
		return;
	}

	if (FUNC1(id) < 0) {
		FUNC0("ksem_destroy");
		return;
	}
	FUNC3();
}