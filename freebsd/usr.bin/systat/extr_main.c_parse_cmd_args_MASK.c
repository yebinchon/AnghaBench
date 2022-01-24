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
struct cmdentry {int /*<<< orphan*/ * argv; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cmdentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT_MAX ; 
 struct cmdentry* FUNC1 (int,int) ; 
 int /*<<< orphan*/  commands ; 
 unsigned int delay ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 void* FUNC4 (char*) ; 
 double FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (int argc, char **argv)
{
	int in_command = 0;
	struct cmdentry *cmd = NULL;
	double t;

	while (argc) {
		if (argv[0][0] == '-') {
			if (in_command)
					FUNC0(&commands, cmd, link);

			if (FUNC3(argv[0], "--", 3) == 0) {
				in_command = 0; /*-- ends a command explicitly*/
				argc --, argv ++;
				continue;
			}
			cmd = FUNC1(1, sizeof(struct cmdentry));
			if (cmd == NULL)
				FUNC2(1, "memory allocating failure");
			cmd->cmd = FUNC4(&argv[0][1]);
			if (cmd->cmd == NULL)
				FUNC2(1, "memory allocating failure");
			in_command = 1;
		}
		else if (!in_command) {
			t = FUNC5(argv[0], NULL) * 1000000.0;
			if (t > 0 && t < (double)UINT_MAX)
				delay = (unsigned int)t;
		}
		else if (cmd != NULL) {
			cmd->argv = FUNC4(argv[0]);
			if (cmd->argv == NULL)
				FUNC2(1, "memory allocating failure");
			in_command = 0;
			FUNC0(&commands, cmd, link);
		}
		else
			FUNC2(1, "invalid arguments list");

		argc--, argv++;
	}
	if (in_command && cmd != NULL)
		FUNC0(&commands, cmd, link);

}