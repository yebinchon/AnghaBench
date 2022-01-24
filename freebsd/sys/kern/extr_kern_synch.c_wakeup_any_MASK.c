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

/* Variables and functions */
 int SLEEPQ_SLEEP ; 
 int SLEEPQ_UNFAIR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void *ident)
{
	int wakeup_swapper;

	FUNC1(ident);
	wakeup_swapper = FUNC3(ident, SLEEPQ_SLEEP | SLEEPQ_UNFAIR,
	    0, 0);
	FUNC2(ident);
	if (wakeup_swapper)
		FUNC0();
}