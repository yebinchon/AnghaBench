#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; char* param; char* desc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_1__* cmds ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 () ; 
 int nbcmds ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static void
FUNC4(FILE *out, const char *subcmd)
{
	int i;

	if (subcmd == NULL) {
		FUNC1(out, "Usage: %s [-u /dev/ses<N>] <command> [options]\n",
		    FUNC2());
		FUNC1(out, "Commands supported:\n");
	}
	for (i = 0; i < nbcmds; i++) {
		if (subcmd != NULL) {
			if (FUNC3(subcmd, cmds[i].name) == 0) {
				FUNC1(out, "Usage: %s %s [-u /dev/ses<N>] "
				    "%s\n\t%s\n", FUNC2(), subcmd,
				    cmds[i].param, cmds[i].desc);
				break;
			}
			continue;
		}
		FUNC1(out, "    %-12s%s\n\t\t%s\n\n", cmds[i].name,
		    cmds[i].param, cmds[i].desc);
	}

	FUNC0(EXIT_FAILURE);
}