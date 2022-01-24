#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int /*<<< orphan*/  fd; struct TYPE_3__* next; } ;
typedef  TYPE_1__ LIST ;

/* Variables and functions */
 int /*<<< orphan*/  BSIZE ; 
 int /*<<< orphan*/  DEFFILEMODE ; 
 int EXIT_FAILURE ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char**,char*) ; 
 TYPE_1__* head ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ optind ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC14(int argc, char *argv[])
{
	LIST *p;
	int n, fd, rval, wval;
	char *bp;
	int append, ch, exitval;
	char *buf;
#define	BSIZE (8 * 1024)

	append = 0;
	while ((ch = FUNC6(argc, argv, "ai")) != -1)
		switch((char)ch) {
		case 'a':
			append = 1;
			break;
		case 'i':
			(void)FUNC10(SIGINT, SIG_IGN);
			break;
		case '?':
		default:
			FUNC11();
		}
	argv += optind;
	argc -= optind;

	if ((buf = FUNC7(BSIZE)) == NULL)
		FUNC4(1, "malloc");

	if (FUNC3() == -1 || FUNC2() == -1)
		FUNC4(EXIT_FAILURE, "unable to limit stdio");

	FUNC0(STDOUT_FILENO, "stdout");

	for (exitval = 0; *argv; ++argv)
		if ((fd = FUNC8(*argv, append ? O_WRONLY|O_CREAT|O_APPEND :
		    O_WRONLY|O_CREAT|O_TRUNC, DEFFILEMODE)) < 0) {
			FUNC12("%s", *argv);
			exitval = 1;
		} else
			FUNC0(fd, *argv);

	if (FUNC1() < 0)
		FUNC4(EXIT_FAILURE, "unable to enter capability mode");
	while ((rval = FUNC9(STDIN_FILENO, buf, BSIZE)) > 0)
		for (p = head; p; p = p->next) {
			n = rval;
			bp = buf;
			do {
				if ((wval = FUNC13(p->fd, bp, n)) == -1) {
					FUNC12("%s", p->name);
					exitval = 1;
					break;
				}
				bp += wval;
			} while (n -= wval);
		}
	if (rval < 0)
		FUNC4(1, "read");
	FUNC5(exitval);
}