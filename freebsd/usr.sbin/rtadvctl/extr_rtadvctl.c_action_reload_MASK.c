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
 int /*<<< orphan*/  IFNAMSIZ ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int argc, char **argv)
{
	char *action_argv;
	char argv_reload[IFNAMSIZ + sizeof(":reload=")];
	int i;
	int error;

	if (argc == 0) {
		action_argv = FUNC2(":reload=");
		return (FUNC0(action_argv));
	}

	error = 0;
	for (i = 0; i < argc; i++) {
		FUNC1(argv_reload, "%s:reload=", argv[i]);
		action_argv = argv_reload;
		error += FUNC0(action_argv);
	}

	return (error);
}