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
 int /*<<< orphan*/  MAP_UPDATE ; 
 int /*<<< orphan*/  MAP_UPDATE_PATH ; 
 int YPERR_YPERR ; 
 int /*<<< orphan*/  children ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(char *map, char *domain)
{
	int pid;

	switch ((pid = FUNC2())) {
	case 0:
		FUNC0(MAP_UPDATE_PATH, MAP_UPDATE, map, domain, (char *)NULL);
		FUNC4("couldn't exec map update process: %s",
						FUNC3(errno));
		FUNC1(1);
		break;
	case -1:
		FUNC4("fork() failed: %s", FUNC3(errno));
		return(YPERR_YPERR);
		break;
	default:
		children++;
		break;
	}

	return(0);
}