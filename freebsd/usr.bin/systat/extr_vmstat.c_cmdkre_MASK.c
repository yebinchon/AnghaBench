#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  numdevs; } ;

/* Variables and functions */
 scalar_t__ BOOT ; 
 int /*<<< orphan*/  MAXDRIVES ; 
 scalar_t__ RUN ; 
 scalar_t__ TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cur_dev ; 
 int /*<<< orphan*/  devstat_errbuf ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC2 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generation ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  num_devices ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 TYPE_2__ run_dev ; 
 int /*<<< orphan*/  s1 ; 
 int /*<<< orphan*/  s2 ; 
 scalar_t__ state ; 
 int /*<<< orphan*/  z ; 

int
FUNC7(const char *cmd, const char *args)
{
	int retval;

	if (FUNC6(cmd, "run")) {
		retval = 1;
		FUNC0(&s2, &s1);
		switch (FUNC1(NULL, &run_dev)) {
		case -1:
			FUNC3(1, "%s", devstat_errbuf);
			break;
		case 1:
			num_devices = run_dev.dinfo->numdevs;
			generation = run_dev.dinfo->generation;
			retval = FUNC2("refresh", NULL, MAXDRIVES, &cur_dev);
			if (retval == 2)
				FUNC5();
			break;
		default:
			break;
		}
		state = RUN;
		return (retval);
	}
	if (FUNC6(cmd, "boot")) {
		state = BOOT;
		FUNC0(&z, &s1);
		return (1);
	}
	if (FUNC6(cmd, "time")) {
		state = TIME;
		return (1);
	}
	if (FUNC6(cmd, "zero")) {
		retval = 1;
		if (state == RUN) {
			FUNC4(&s1);
			switch (FUNC1(NULL, &run_dev)) {
			case -1:
				FUNC3(1, "%s", devstat_errbuf);
				break;
			case 1:
				num_devices = run_dev.dinfo->numdevs;
				generation = run_dev.dinfo->generation;
				retval = FUNC2("refresh",NULL, MAXDRIVES, &cur_dev);
				if (retval == 2)
					FUNC5();
				break;
			default:
				break;
			}
		}
		return (retval);
	}
	retval = FUNC2(cmd, args, MAXDRIVES, &cur_dev);

	if (retval == 2)
		FUNC5();

	return(retval);
}