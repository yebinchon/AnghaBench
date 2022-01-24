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
 int /*<<< orphan*/  PVM ; 
 scalar_t__ hirunningspace ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rbreqlock ; 
 int runningbufreq ; 
 scalar_t__ runningbufspace ; 

void
FUNC3(void)
{

	FUNC1(&rbreqlock);
	while (runningbufspace > hirunningspace) {
		runningbufreq = 1;
		FUNC0(&runningbufreq, &rbreqlock, PVM, "wdrain", 0);
	}
	FUNC2(&rbreqlock);
}