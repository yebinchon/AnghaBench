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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,char**,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char**,char*) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[], const char *iff_name)
{
	int n;
	unsigned int i;
	char buf[64];
	char *args[8], *s;

	(void) argc;
	args[0] = argv[0];
	args[1] = argv[1];

	/*
	 * Fairly simplistic loop.  Displays a "> " prompt and processes any
	 * input as a cxgbtool command.  You're supposed to enter only the part
	 * after "cxgbtool cxgbX".  Use "quit" or "exit" to exit.  Any error in
	 * the command will also terminate cxgbtool.
	 */
	for (;;) {
		FUNC1(stdout, "> ");
		FUNC0(stdout);
		n = FUNC2(STDIN_FILENO, buf, sizeof(buf) - 1);
		if (n <= 0)
			return (0);

		if (buf[--n] != '\n')
			continue;
		else
			buf[n] = 0;

		s = &buf[0];
		for (i = 2; i < sizeof(args)/sizeof(args[0]) - 1; i++) {
			while (s && (*s == ' ' || *s == '\t'))
				s++;
			if ((args[i] = FUNC5(&s, " \t")) == NULL)
				break;
		}
		args[sizeof(args)/sizeof(args[0]) - 1] = 0;

		if (!FUNC4(args[2], "quit") || !FUNC4(args[2], "exit"))
			return (0);

		(void) FUNC3(i, args, iff_name);
	}

	/* Can't really get here */
	return (0);
}