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
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void
FUNC11(void)
{
	int fd[2], ff[2];
	int inflight, openfiles, deferred, deferred1;

	test = "recursion";
	FUNC5("%s\n", test);
	FUNC6(&inflight, &openfiles);
	deferred = FUNC3();

	FUNC4(fd);

	for (;;) {
		if (FUNC9(PF_UNIX, SOCK_STREAM, 0, ff) == -1) {
			if (errno == EMFILE || errno == ENFILE)
				break;
			FUNC1(-1, "socketpair");
		}
		FUNC7(ff[0], fd[0]);
		FUNC7(ff[0], fd[1]);
		FUNC0(fd[1], fd[0]);
		fd[0] = ff[0];
		fd[1] = ff[1];
	}
	FUNC0(fd[0], fd[1]);
	FUNC8(1);
	FUNC10(inflight, openfiles);
	deferred1 = FUNC3();
	if (deferred != deferred1)
		FUNC2(-1, "recursion: deferred before %d after %d", deferred,
		    deferred1);
}