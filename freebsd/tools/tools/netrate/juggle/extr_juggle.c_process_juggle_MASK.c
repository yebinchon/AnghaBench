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
struct timespec {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int NUMCYCLES ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct timespec*,struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct timespec
FUNC11(int fd1, int fd2, int pipeline)
{
	struct timespec tstart, tfinish;
	pid_t pid, ppid, wpid;
	int error, i, j;

	ppid = FUNC5();

	pid = FUNC4();
	if (pid < 0)
		FUNC1(-1, "process_juggle: fork");

	if (pid == 0) {
		if (FUNC8(fd2) < 0) {
			error = errno;
			FUNC6(ppid, SIGTERM);
			errno = error;
			FUNC1(-1, "process_juggle: child: message_send");
		}

		for (i = 0; i < NUMCYCLES; i++) {
			for (j = 0; j < pipeline; j++) {
				if (FUNC8(fd2) < 0)
					FUNC1(-1, "message_send fd2");

				if (FUNC7(fd2) < 0)
					FUNC1(-1, "message_recv fd2");
			}
		}

		FUNC3(0);
	} else {
		if (FUNC7(fd1) < 0) {
			error = errno;
			FUNC6(pid, SIGTERM);
			errno = error;
			FUNC1(-1, "process_juggle: parent: message_recv");
		}

		if (FUNC0(CLOCK_REALTIME, &tstart) < 0)
			FUNC1(-1, "process_juggle: clock_gettime");

		for (i = 0; i < NUMCYCLES; i++) {
			for (j = 0; j < pipeline; j++) {
				if (FUNC8(fd1) < 0) {
					error = errno;
					FUNC6(pid, SIGTERM);
					errno = error;
					FUNC1(-1, "message_send fd1");
				}
			}

			for (j = 0; j < pipeline; j++) {
				if (FUNC7(fd1) < 0) {
					error = errno;
					FUNC6(pid, SIGTERM);
					errno = error;
					FUNC1(-1, "message_recv fd1");
				}
			}
		}

		if (FUNC0(CLOCK_REALTIME, &tfinish) < 0)
			FUNC1(-1, "process_juggle: clock_gettime");
	}

	wpid = FUNC10(pid, NULL, 0);
	if (wpid < 0)
		FUNC1(-1, "process_juggle: waitpid");
	if (wpid != pid)
		FUNC2(-1, "process_juggle: waitpid: pid != wpid");

	FUNC9(&tfinish, &tstart, &tfinish);

	return (tfinish);
}