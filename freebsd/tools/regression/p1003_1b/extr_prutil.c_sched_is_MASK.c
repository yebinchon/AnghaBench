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
struct sched_param {int dummy; } ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sched_param*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int line, struct sched_param *p, int shouldbe)
{
	int scheduler;
	struct sched_param param;

	/* What scheduler are we running now?
	 */
	errno = 0;
	scheduler = FUNC4(0);
	if (FUNC3(0, &param))
		FUNC2("sched_getparam");

	if (p)
		*p = param;

	if (shouldbe != -1 && scheduler != shouldbe)
	{
		FUNC1(stderr,
		"At line %d the scheduler should be %s yet it is %s.\n",
		line, FUNC5(shouldbe), FUNC5(scheduler));

		FUNC0(-1);
	}

	return scheduler;
}