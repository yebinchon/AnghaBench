#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* cmd; int option; int (* fn ) (int,char const**,char const*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int SUPPORT_SUPER_PREFIX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int FUNC5 (int,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(int argc, const char **argv, const char *prefix)
{
	int i;
	if (argc < 2 || !FUNC4(argv[1], "-h"))
		FUNC6("git submodule--helper <command>");

	for (i = 0; i < FUNC0(commands); i++) {
		if (!FUNC4(argv[1], commands[i].cmd)) {
			if (FUNC3() &&
			    !(commands[i].option & SUPPORT_SUPER_PREFIX))
				FUNC2(FUNC1("%s doesn't support --super-prefix"),
				    commands[i].cmd);
			return commands[i].fn(argc - 1, argv + 1, prefix);
		}
	}

	FUNC2(FUNC1("'%s' is not a valid submodule--helper "
	      "subcommand"), argv[1]);
}