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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int initialized ; 
 int /*<<< orphan*/  query_tv ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(int asroot, int injail, struct test *test)
{

	if (initialized)
		return (0);
	if (FUNC0(NULL, &query_tv) < 0) {
		FUNC1("priv_adjtime_setup: adjtime(NULL)");
		return (-1);
	}
	initialized = 1;
	return (0);
}