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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int STDIN_FILENO ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ childerr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  oflag ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ tflag ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static void
FUNC14(char **argv)
{
	pid_t pid;
	int fd;
	char **avec;

	/*
	 * If the user wants to be notified of each command before it is
	 * executed, notify them.  If they want the notification to be
	 * followed by a prompt, then prompt them.
	 */
	if (tflag || pflag) {
		(void)FUNC6(stderr, "%s", *argv);
		for (avec = argv + 1; *avec != NULL; ++avec)
			(void)FUNC6(stderr, " %s", *avec);
		/*
		 * If the user has asked to be prompted, do so.
		 */
		if (pflag)
			/*
			 * If they asked not to exec, return without execution
			 * but if they asked to, go to the execution.  If we
			 * could not open their tty, break the switch and drop
			 * back to -t behaviour.
			 */
			switch (FUNC9()) {
			case 0:
				return;
			case 1:
				goto exec;
			case 2:
				break;
			}
		(void)FUNC6(stderr, "\n");
		(void)FUNC5(stderr);
	}
exec:
	childerr = 0;
	switch (pid = FUNC10()) {
	case -1:
		FUNC12("vfork");
		FUNC13(*argv, 1);
	case 0:
		if (oflag) {
			if ((fd = FUNC7(_PATH_TTY, O_RDONLY)) == -1)
				FUNC3(1, "can't open /dev/tty");
		} else {
			fd = FUNC7(_PATH_DEVNULL, O_RDONLY);
		}
		if (fd > STDIN_FILENO) {
			if (FUNC2(fd, STDIN_FILENO) != 0)
				FUNC3(1, "can't dup2 to stdin");
			FUNC1(fd);
		}
		FUNC4(argv[0], argv);
		childerr = errno;
		FUNC0(1);
	}
	FUNC8(pid);
	FUNC11(*argv, 0);
}