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
typedef  scalar_t__ sig_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ my_exit ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC1(int reset)
{
	static sig_t	hupval, intval;

	if (!reset) {
		hupval = FUNC0(SIGHUP, SIG_IGN);
		if (hupval != SIG_IGN)
			hupval = my_exit;
		intval = FUNC0(SIGINT, SIG_IGN);
		if (intval != SIG_IGN)
			intval = my_exit;
	}
	FUNC0(SIGHUP, hupval);
	FUNC0(SIGINT, intval);
}