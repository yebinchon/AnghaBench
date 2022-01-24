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
struct ngcmd {char const* cmd; char const** aliases; } ;

/* Variables and functions */
 int MAX_CMD_ALIAS ; 
 int /*<<< orphan*/  WHITESPACE ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(const struct ngcmd *cmd, const char *s)
{
	int a;

	/* Try to match command, ignoring the usage stuff */
	if (FUNC1(s) <= FUNC0(cmd->cmd, WHITESPACE)) {
		if (FUNC2(s, cmd->cmd, FUNC1(s)) == 0)
			return (1);
	}

	/* Try to match aliases */
	for (a = 0; a < MAX_CMD_ALIAS && cmd->aliases[a] != NULL; a++) {
		if (FUNC1(cmd->aliases[a]) >= FUNC1(s)) {
			if (FUNC2(s, cmd->aliases[a], FUNC1(s)) == 0)
				return (1);
		}
	}

	/* No match */
	return (0);
}