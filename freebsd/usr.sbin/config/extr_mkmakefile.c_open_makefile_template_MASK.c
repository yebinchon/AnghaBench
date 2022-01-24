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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 char* machinename ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

FILE *
FUNC3(void)
{
	FILE *ifp;
	char line[BUFSIZ];

	FUNC2(line, sizeof(line), "../../conf/Makefile.%s", machinename);
	ifp = FUNC1(line, "r");
	if (ifp == NULL) {
		FUNC2(line, sizeof(line), "Makefile.%s", machinename);
		ifp = FUNC1(line, "r");
	}
	if (ifp == NULL)
		FUNC0(1, "%s", line);
	return (ifp);
}