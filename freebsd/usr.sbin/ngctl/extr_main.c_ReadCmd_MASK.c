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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CMDRTN_ERROR ; 
 int CMDRTN_USAGE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(int ac, char **av)
{
	FILE *fp;
	int rtn;

	/* Open file */
	switch (ac) {
	case 2:
		if ((fp = FUNC2(av[1], "r")) == NULL) {
			FUNC3("%s", av[1]);
			return (CMDRTN_ERROR);
		}
		break;
	default:
		return (CMDRTN_USAGE);
	}

	/* Process it */
	rtn = FUNC0(fp);
	FUNC1(fp);
	return (rtn);
}