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
struct selinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct selinfo*,int) ; 

void
FUNC1(struct selinfo *sip)
{

	/*
	 * This feature is already provided by doselwakeup(), thus it is
	 * enough to go for it.
	 * Eventually, the context, should take care to avoid races
	 * between thread calling select()/poll() and file descriptor
	 * detaching, but, again, the races are just the same as
	 * selwakeup().
	 */
        FUNC0(sip, -1);
}