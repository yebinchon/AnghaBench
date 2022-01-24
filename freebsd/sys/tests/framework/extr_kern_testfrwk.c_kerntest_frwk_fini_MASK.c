#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  kfrwk_tq; int /*<<< orphan*/  kfrwk_testlist; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ kfrwk ; 
 scalar_t__ ktest_frwk_inited ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void)
{
	FUNC1();
	if (!FUNC3(&kfrwk.kfrwk_testlist)) {
		/* Still modules registered */
		FUNC2();
		return (EBUSY);
	}
	ktest_frwk_inited = 0;
	FUNC2();
	FUNC4(kfrwk.kfrwk_tq);
	/* Ok lets destroy the mutex on the way outs */
	FUNC0();
	return (0);
}