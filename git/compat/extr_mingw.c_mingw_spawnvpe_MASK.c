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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char const**,char**,char const*,int,int,int,int) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char const*,int) ; 

pid_t FUNC4(const char *cmd, const char **argv, char **deltaenv,
		     const char *dir,
		     int fhin, int fhout, int fherr)
{
	pid_t pid;
	char *prog = FUNC3(cmd, 0);

	if (!prog) {
		errno = ENOENT;
		pid = -1;
	}
	else {
		const char *interpr = FUNC2(prog);

		if (interpr) {
			const char *argv0 = argv[0];
			char *iprog = FUNC3(interpr, 1);
			argv[0] = prog;
			if (!iprog) {
				errno = ENOENT;
				pid = -1;
			}
			else {
				pid = FUNC1(iprog, argv, deltaenv, dir, 1,
						       fhin, fhout, fherr);
				FUNC0(iprog);
			}
			argv[0] = argv0;
		}
		else
			pid = FUNC1(prog, argv, deltaenv, dir, 0,
					       fhin, fhout, fherr);
		FUNC0(prog);
	}
	return pid;
}