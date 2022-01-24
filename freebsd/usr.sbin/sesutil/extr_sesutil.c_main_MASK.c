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
struct command {int (* exec ) (int,char**) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct command* cmds ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int nbcmds ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**) ; 
 char* uflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int,char**) ; 

int
FUNC7(int argc, char **argv)
{
	int i, ch;
	struct command *cmd = NULL;

	argc = FUNC6(argc, argv);
	if (argc < 0)
		FUNC0(1);

	uflag = "/dev/ses[0-9]*";
	while ((ch = FUNC1(argc, argv, "u:", NULL, NULL)) != -1) {
		switch (ch) {
		case 'u':
			uflag = optarg;
			break;
		case '?':
		default:
			FUNC4(stderr, NULL);
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1) {
		FUNC5("Missing command");
		FUNC4(stderr, NULL);
	}

	for (i = 0; i < nbcmds; i++) {
		if (FUNC2(argv[0], cmds[i].name) == 0) {
			cmd = &cmds[i];
			break;
		}
	}

	if (cmd == NULL) {
		FUNC5("unknown command %s", argv[0]);
		FUNC4(stderr, NULL);
	}

	return (cmd->exec(argc, argv));
}