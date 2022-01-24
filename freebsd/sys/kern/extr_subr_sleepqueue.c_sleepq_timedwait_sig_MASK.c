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
 int /*<<< orphan*/  curthread ; 
 int FUNC0 (void*,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(void *wchan, int pri)
{
	int rcatch, rvalt, rvals;

	rcatch = FUNC0(wchan, pri);
	rvalt = FUNC2();
	rvals = FUNC1();
	FUNC3(curthread);
	if (rcatch)
		return (rcatch);
	if (rvals)
		return (rvals);
	return (rvalt);
}