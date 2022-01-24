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
struct ngcmd {char const* cmd; char* desc; char** aliases; char* help; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int CMDRTN_OK ; 
 struct ngcmd* FUNC0 (char*) ; 
 int MAX_CMD_ALIAS ; 
 struct ngcmd** cmds ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,int,char*,char const*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int ac, char **av)
{
	const struct ngcmd *cmd;
	int k;

	switch (ac) {
	case 0:
	case 1:
		/* Show all commands */
		FUNC2("Available commands:\n");
		for (k = 0; cmds[k] != NULL; k++) {
			char *s, buf[100];

			cmd = cmds[k];
			FUNC3(buf, sizeof(buf), "%s", cmd->cmd);
			for (s = buf; *s != '\0' && !FUNC1(*s); s++);
			*s = '\0';
			FUNC2("  %-10s %s\n", buf, cmd->desc);
		}
		return (CMDRTN_OK);
	default:
		/* Show help on a specific command */
		if ((cmd = FUNC0(av[1])) != NULL) {
			FUNC2("usage:    %s\n", cmd->cmd);
			if (cmd->aliases[0] != NULL) {
				int a = 0;

				FUNC2("Aliases:  ");
				while (1) {
					FUNC2("%s", cmd->aliases[a++]);
					if (a == MAX_CMD_ALIAS
					    || cmd->aliases[a] == NULL) {
						FUNC2("\n");
						break;
					}
					FUNC2(", ");
				}
			}
			FUNC2("Summary:  %s\n", cmd->desc);
			if (cmd->help != NULL) {
				const char *s;
				char buf[65];
				int tot, len, done;

				FUNC2("Description:\n");
				for (s = cmd->help; *s != '\0'; s += len) {
					while (FUNC1(*s))
						s++;
					tot = FUNC3(buf,
					    sizeof(buf), "%s", s);
					len = FUNC4(buf);
					done = len == tot;
					if (!done) {
						while (len > 0
						    && !FUNC1(buf[len-1]))
							buf[--len] = '\0';
					}
					FUNC2("  %s\n", buf);
				}
			}
		}
	}
	return (CMDRTN_OK);
}