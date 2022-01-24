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
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ across ; 
 int clcnt ; 
 scalar_t__ errcnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**) ; 
 scalar_t__ merge ; 
 int FUNC4 (int,char**) ; 
 int FUNC5 (int,char**) ; 
 int FUNC6 (int,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ terminate ; 
 int /*<<< orphan*/  timefrmt ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int,char**) ; 

int
FUNC10(int argc, char *argv[])
{
	int ret_val;

	if (FUNC7(SIGINT, SIG_IGN) != SIG_IGN)
		(void)FUNC7(SIGINT, terminate);
	ret_val = FUNC6(argc, argv);
	if (!ret_val) {
		/*
		 * select the output format based on options
		 */
		if (merge)
			ret_val = FUNC4(argc, argv);
		else if (clcnt == 1)
			ret_val = FUNC5(argc, argv);
		else if (across)
			ret_val = FUNC3(argc, argv);
		else
			ret_val = FUNC9(argc, argv);
		FUNC2(timefrmt);
	} else
		FUNC8();
	FUNC1();
	if (errcnt || ret_val)
		FUNC0(1);
	return(0);
}