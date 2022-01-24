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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  av ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char** FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (char const* const) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(int argc, const char *const argv[])
{
	pid_t child_pid;
	pid_t wret;
	int child_status;
	int i;

	FUNC10("Executing command: ");
	for (i = 0; i < argc - 1; i++) {
		if (!argv[i]) {
			/* Invalid argument. */
			return -1;
		}
		if (i > 0) {
			FUNC11(' ');
		}
		FUNC10("%s", argv[i]);
	}
	FUNC11('\n');

	child_pid = FUNC6();
	if (child_pid == 0) {
		char **av;
		int fds[3];

		/* Child process. Redirect stdin, stdout
		 * and stderr. */
		for (i = 0; i < 3; i++) {
			FUNC3(i);
			fds[i] = FUNC8("/dev/null", O_RDONLY);
			if (fds[i] < 0) {
				for (i--; i >= 0; i--) {
					FUNC3(fds[i]);
				}
				return -1;
			}
		}

		/* Make a copy of the arguments, passing them to execvp. */
		av = FUNC2(argc, sizeof(av[0]));
		if (!av) {
			FUNC5(EXIT_FAILURE);
		}
		for (i = 0; i < argc - 1; i++) {
			av[i] = FUNC12(argv[i]);
			if (!av[i]) {
				FUNC5(EXIT_FAILURE);
			}
		}
		FUNC4(av[0], av);
		FUNC9("execvp()");
		FUNC5(EXIT_FAILURE);
	}

	wret = FUNC14(child_pid, &child_status, 0);
	if (wret < 0) {
		FUNC7(stderr, "waitpid() failed: %s\n", FUNC13(errno));
		return wret;
	}
	if (FUNC1(child_status)) {
		return FUNC0(child_status);
	}

	return -1;
}