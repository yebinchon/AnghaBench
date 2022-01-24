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
struct hci_command {int (* handler ) (int,int,char**) ;char* command; char* description; } ;

/* Variables and functions */
#define  ERROR 131 
#define  FAILED 130 
#define  OK 129 
#define  USAGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 struct hci_command* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  host_controller_baseband_commands ; 
 int /*<<< orphan*/  info_commands ; 
 int /*<<< orphan*/  le_commands ; 
 int /*<<< orphan*/  link_control_commands ; 
 int /*<<< orphan*/  link_policy_commands ; 
 int /*<<< orphan*/  node_commands ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  status_commands ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int,char**) ; 

__attribute__((used)) static int
FUNC9(char const *node, int argc, char **argv)
{
	char			*cmd = argv[0];
	struct hci_command	*c = NULL;
	int			 s, e, help;
	
	help = 0;
	if (FUNC6(cmd, "help") == 0) {
		argc --;
		argv ++;

		if (argc <= 0) {
			FUNC3(stdout, "Supported commands:\n");
			FUNC4(link_control_commands);
			FUNC4(link_policy_commands);
			FUNC4(host_controller_baseband_commands);
			FUNC4(info_commands);
			FUNC4(status_commands);
			FUNC4(le_commands);
			FUNC4(node_commands);
			FUNC3(stdout, "\nFor more information use " \
				"'help command'\n");

			return (OK);
		}

		help = 1;
		cmd = argv[0];
	}

	c = FUNC2(cmd, link_control_commands);
	if (c != NULL)
		goto execute;

	c = FUNC2(cmd, link_policy_commands);
	if (c != NULL)
		goto execute;

	c = FUNC2(cmd, host_controller_baseband_commands);
	if (c != NULL)
		goto execute;

	c = FUNC2(cmd, info_commands);
	if (c != NULL)
		goto execute;

	c = FUNC2(cmd, status_commands);
	if (c != NULL)
		goto execute;

	c = FUNC2(cmd, le_commands);
	if (c != NULL)
		goto execute;

	
	c = FUNC2(cmd, node_commands);
	if (c == NULL) {
		FUNC3(stdout, "Unknown command: \"%s\"\n", cmd);
		return (ERROR);
	}
execute:
	if (!help) {
		s = FUNC5(node);
		e = (c->handler)(s, -- argc, ++ argv);
		FUNC1(s);
	} else
		e = USAGE;

	switch (e) {
	case OK:
	case FAILED:
		break;

	case ERROR:
		FUNC3(stdout, "Could not execute command \"%s\". %s\n",
			cmd, FUNC7(errno));
		break;

	case USAGE:
		FUNC3(stdout, "Usage: %s\n%s\n", c->command, c->description);
		break;

	default: FUNC0(0); break;
	}


	return (e);
}