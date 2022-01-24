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
struct bthid_command {int (* handler ) (int /*<<< orphan*/ ,int,char**) ;char* command; char* description; } ;
typedef  int /*<<< orphan*/  bdaddr_p ;

/* Variables and functions */
#define  ERROR 131 
#define  FAILED 130 
#define  OK 129 
#define  USAGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 struct bthid_command* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hid_commands ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdp_commands ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,char**) ; 

__attribute__((used)) static int
FUNC7(bdaddr_p bdaddr, int argc, char **argv)
{
	char			*cmd = argv[0];
	struct bthid_command	*c = NULL;
	int			 e, help;

	help = 0;
	if (FUNC4(cmd, "help") == 0) {
		argc --;
		argv ++;

		if (argc <= 0) {
			FUNC2(stdout, "Supported commands:\n");
			FUNC3(sdp_commands);
			FUNC3(hid_commands);
			FUNC2(stdout, "\nFor more information use " \
					"'help command'\n");

			return (OK);
		}

		help = 1;
		cmd = argv[0];
	}

	c = FUNC1(cmd, sdp_commands); 
	if (c == NULL)
		c = FUNC1(cmd, hid_commands); 

	if (c == NULL) {
		FUNC2(stdout, "Unknown command: \"%s\"\n", cmd);
		return (ERROR);
	}

	if (!help)
		e = (c->handler)(bdaddr, -- argc, ++ argv);
	else
		e = USAGE;

	switch (e) {
	case OK:
	case FAILED:
		break;

	case ERROR:
		FUNC2(stdout, "Could not execute command \"%s\". %s\n",
				cmd, FUNC5(errno));
		break;

	case USAGE:
		FUNC2(stdout, "Usage: %s\n%s\n", c->command, c->description);
		break;

	default: FUNC0(0); break;
	}

	return (e);
}