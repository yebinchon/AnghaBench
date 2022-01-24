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
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  CMDLINE ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STDIN_FILENO ; 
 size_t col ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int delay ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 char* line ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int
FUNC11(void)
{
	int ch, n;
	struct timeval last, intvl, now, tm;
	fd_set rfds;

	/* Set initial timings */
	FUNC6(&last, NULL);
	intvl.tv_sec = delay / 1000000;
	intvl.tv_usec = delay % 1000000;
	for (;;) {
		col = 0;
		FUNC8(CMDLINE, 0);
		for (;;) {
			/* Determine interval to sleep */
			(void)FUNC6(&now, NULL);
			tm.tv_sec = last.tv_sec + intvl.tv_sec - now.tv_sec;
			tm.tv_usec = last.tv_usec + intvl.tv_usec - now.tv_usec;
			while (tm.tv_usec < 0) {
				tm.tv_usec += 1000000;
				tm.tv_sec--;
			}
			while (tm.tv_usec >= 1000000) {
				tm.tv_usec -= 1000000;
				tm.tv_sec++;
			}
			if (tm.tv_sec < 0) {
				/* We have to update screen immediately */
				FUNC3();
				FUNC6(&last, NULL);
				continue;
			}

			/* Prepare select  */
			FUNC1(&rfds);
			FUNC0(STDIN_FILENO, &rfds);
			n = FUNC10(STDIN_FILENO + 1, &rfds, NULL, NULL, &tm);

			if (n > 0) {
				/* Read event on stdin */
				ch = FUNC5();

				if (FUNC7(ch) == 0) {
					FUNC9();
					continue;
				}
	
				line[col] = '\0';
				FUNC2(line + 1);
				/* Refresh delay */
				intvl.tv_sec = delay / 1000000;
				intvl.tv_usec = delay % 1000000;
				FUNC9();
				break;
			}

			if (n < 0 && errno != EINTR)
				FUNC4(1);

			/* Timeout or signal. Call display another time */
			FUNC3();
			FUNC6(&last, NULL);
		}
	}
}