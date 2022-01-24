#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbuf ;
struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
struct flock {int l_start; int l_len; int l_type; int /*<<< orphan*/  l_whence; } ;
typedef  int /*<<< orphan*/  outbuf ;

/* Variables and functions */
 int CHILD_COUNT ; 
 scalar_t__ EDEADLK ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* F_RDLCK ; 
 int /*<<< orphan*/  F_SETLKW ; 
 int F_UNLCK ; 
 void* F_WRLCK ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SUCCEED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int,char*,int,int) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(int fd, int argc, const char **argv)
{
#define CHILD_COUNT 20
	/*
	 * We create a set of child processes and let each one run
	 * through a random sequence of locks and unlocks.
	 */
	int i, j, id, id_base;
	int pids[CHILD_COUNT], pid;
	char buf[128];
	char tbuf[128];
	int map[128];
	char outbuf[512];
	struct flock fl;
	struct itimerval itv;
	int status;

	id_base = 0;
	if (argc >= 2)
		id_base = FUNC18(argv[1], NULL, 0);

	FUNC10("14 - soak test: ");
	FUNC4(stdout);

	for (i = 0; i < 128; i++)
		map[i] = F_UNLCK;

	for (i = 0; i < CHILD_COUNT; i++) {

		pid = FUNC5();
		if (pid < 0)
			FUNC1(1, "fork");
		if (pid) {
			/*
			 * Parent - record the pid and continue.
			 */
			pids[i] = pid;
			continue;
		}

		/*
		 * Child - do some work and exit.
		 */
		id = id_base + i;
		FUNC16(FUNC6());

		for (j = 0; j < 50; j++) {
			int start, end, len;
			int set, wrlock;

			do {
				start = FUNC12() & 127;
				end = FUNC12() & 127;
			} while (end <= start);

			set = FUNC12() & 1;
			wrlock = FUNC12() & 1;

			len = end - start;
			fl.l_start = start;
			fl.l_len = len;
			fl.l_whence = SEEK_SET;
			if (set)
				fl.l_type = wrlock ? F_WRLCK : F_RDLCK;
			else
				fl.l_type = F_UNLCK;

			itv.it_interval.tv_sec = 0;
			itv.it_interval.tv_usec = 0;
			itv.it_value.tv_sec = 0;
			itv.it_value.tv_usec = 3000;
			FUNC14(ITIMER_REAL, &itv, NULL);

			if (FUNC3(fd, F_SETLKW, &fl) < 0) {
				if (errno == EDEADLK || errno == EINTR) {
					if (verbose) {
						FUNC15(outbuf, sizeof(outbuf),
						    "%d[%d]: %s [%d .. %d] %s\n",
						    id, j,
						    set ? (wrlock ? "write lock"
							: "read lock")
						    : "unlock", start, end,
						    errno == EDEADLK
						    ? "deadlock"
						    : "interrupted");
						FUNC20(1, outbuf,
						    FUNC17(outbuf));
					}
					continue;
				} else {
					FUNC8("fcntl");
				}
			}

			itv.it_interval.tv_sec = 0;
			itv.it_interval.tv_usec = 0;
			itv.it_value.tv_sec = 0;
			itv.it_value.tv_usec = 0;
			FUNC14(ITIMER_REAL, &itv, NULL);

			if (verbose) {
				FUNC15(outbuf, sizeof(outbuf),
				    "%d[%d]: %s [%d .. %d] succeeded\n",
				    id, j,
				    set ? (wrlock ? "write lock" : "read lock")
				    : "unlock", start, end);
				FUNC20(1, outbuf, FUNC17(outbuf));
			}

			if (set) {
				if (wrlock) {
					/*
					 * We got a write lock - write
					 * our ID to each byte that we
					 * managed to claim.
					 */
					for (i = start; i < end; i++)
						map[i] = F_WRLCK;
					FUNC7(&buf[start], id, len);
					if (FUNC11(fd, &buf[start], len,
						start) != len) {
						FUNC10("%d: short write\n", id);
						FUNC2(1);
					}
				} else {
					/*
					 * We got a read lock - read
					 * the bytes which we claimed
					 * so that we can check that
					 * they don't change
					 * unexpectedly.
					 */
					for (i = start; i < end; i++)
						map[i] = F_RDLCK;
					if (FUNC9(fd, &buf[start], len,
						start) != len) {
						FUNC10("%d: short read\n", id);
						FUNC2(1);
					}
				}
			} else {
				for (i = start; i < end; i++)
					map[i] = F_UNLCK;
			}

			FUNC19(1000);

			/*
			 * Read back the whole region so that we can
			 * check that all the bytes we have some kind
			 * of claim to have the correct value.
			 */
			if (FUNC9(fd, tbuf, sizeof(tbuf), 0) != sizeof(tbuf)) {
				FUNC10("%d: short read\n", id);
				FUNC2(1);
			}

			for (i = 0; i < 128; i++) {
				if (map[i] != F_UNLCK && buf[i] != tbuf[i]) {
					FUNC15(outbuf, sizeof(outbuf),
					    "%d: byte %d expected %d, "
					    "got %d\n", id, i, buf[i], tbuf[i]);
					FUNC20(1, outbuf, FUNC17(outbuf));
					FUNC2(1);
				}
			}
		}
		if (verbose)
			FUNC10("%d[%d]: done\n", id, j);

		FUNC2(0);
	}

	status = 0;
	for (i = 0; i < CHILD_COUNT; i++) {
		status += FUNC13(pids[i]);
	}
	if (status)
		FUNC0(status != 0);

	SUCCEED;
}