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
struct buf {long b_runningbufspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 long FUNC1 (int /*<<< orphan*/ *,long) ; 
 long lorunningspace ; 
 int /*<<< orphan*/  runningbufspace ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct buf *bp)
{
	long space, bspace;

	bspace = bp->b_runningbufspace;
	if (bspace == 0)
		return;
	space = FUNC1(&runningbufspace, -bspace);
	FUNC0(space >= bspace, ("runningbufspace underflow %ld %ld",
	    space, bspace));
	bp->b_runningbufspace = 0;
	/*
	 * Only acquire the lock and wakeup on the transition from exceeding
	 * the threshold to falling below it.
	 */
	if (space < lorunningspace)
		return;
	if (space - bspace > lorunningspace)
		return;
	FUNC2();
}