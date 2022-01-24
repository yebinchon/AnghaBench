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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (int,char**) ; 
 int FUNC4 (int,char**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
	char *cmdname;

	if (argv[0] == NULL)
		FUNC1(1, "NULL command name");

	cmdname = FUNC0(argv[0]);

	if (FUNC5(cmdname, "automount") == 0)
		return (FUNC2(argc, argv));
	else if (FUNC5(cmdname, "automountd") == 0)
		return (FUNC3(argc, argv));
	else if (FUNC5(cmdname, "autounmountd") == 0)
		return (FUNC4(argc, argv));
	else
		FUNC1(1, "binary name should be either \"automount\", "
		    "\"automountd\", or \"autounmountd\"");
}