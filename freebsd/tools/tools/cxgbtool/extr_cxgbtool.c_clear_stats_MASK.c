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
 int /*<<< orphan*/  CHELSIO_CLEAR_STATS ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static int
FUNC2(int argc, char *argv[], int start_arg, const char *iff_name)
{
	(void) argc;
	(void) argv;
	(void) start_arg;

	if (FUNC0(iff_name, CHELSIO_CLEAR_STATS, NULL) < 0)
		 FUNC1(1, "clearstats");

	return 0;
}