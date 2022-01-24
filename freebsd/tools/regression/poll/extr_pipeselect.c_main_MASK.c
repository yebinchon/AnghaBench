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

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FIFONAME ; 
 int FT_END ; 
#define  FT_FIFO 130 
#define  FT_PIPE 129 
#define  FT_SOCKETPAIR 128 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  catch ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpid ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int filetype ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  ppid ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ state ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(void)
{
	int fd[2], num;

	num = 1;
	FUNC9("1..20\n");
	FUNC3(stdout);
	FUNC10(SIGUSR1, catch);
	ppid = FUNC5();
	for (filetype = 0; filetype < FT_END; filetype++) {
		switch (filetype) {
		case FT_FIFO:
			if (FUNC6(FIFONAME, 0666) != 0)
				FUNC2(1, "mkfifo");
			fd[0] = -1;
			fd[1] = -1;
			break;
		case FT_SOCKETPAIR:
			if (FUNC11(AF_UNIX, SOCK_STREAM, AF_UNSPEC,
			    fd) != 0)
				FUNC2(1, "socketpair");
			break;
		case FT_PIPE:
			if (FUNC8(fd) != 0)
				FUNC2(1, "pipe");
			break;
		}
		state = 0;
		switch (cpid = FUNC4()) {
		case -1:
			FUNC2(1, "fork");
		case 0:
			(void)FUNC1(fd[1]);
			FUNC0(fd[0], num);
			break;
		default:
			(void)FUNC1(fd[0]);
			FUNC7(fd[1]);
			break;
		}
		num += filetype == FT_FIFO ? 12 : 4;
	}
	(void)FUNC12(FIFONAME);
	return (0);
}