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
 int /*<<< orphan*/  hogticks ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int realstathz ; 
 int sched_slice ; 
 int stathz ; 

__attribute__((used)) static void
FUNC1(void *dummy)
{

	realstathz = stathz ? stathz : hz;
	sched_slice = realstathz / 10;	/* ~100ms */
	hogticks = FUNC0(1, (2 * hz * sched_slice + realstathz / 2) /
	    realstathz);
}