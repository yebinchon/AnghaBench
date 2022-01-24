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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_DATA ; 
 scalar_t__ initialized ; 
 int /*<<< orphan*/  rl_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(int asroot, int injail, struct test *test)
{

	if (initialized)
		(void)FUNC0(RLIMIT_DATA, &rl_base);
	initialized = 0;
}