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

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int NUMCYCLES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static struct timespec
FUNC5(int fd1, int fd2, int pipeline)
{
	struct timespec tstart, tfinish;
	int i, j;

	if (FUNC0(CLOCK_REALTIME, &tstart) < 0)
		FUNC1(-1, "juggle: clock_gettime");

	for (i = 0; i < NUMCYCLES; i++) {

		for (j = 0; j < pipeline; j++) {
			if (FUNC3(fd1) < 0)
				FUNC1(-1, "message_send fd1");
		}

		for (j = 0; j < pipeline; j++) {
			if (FUNC2(fd2) < 0)
				FUNC1(-1, "message_recv fd2");

			if (FUNC3(fd2) < 0)
				FUNC1(-1, "message_send fd2");
		}

		for (j = 0; j < pipeline; j++) {
			if (FUNC2(fd1) < 0)
				FUNC1(-1, "message_recv fd1");
		}
	}

	if (FUNC0(CLOCK_REALTIME, &tfinish) < 0)
		FUNC1(-1, "juggle: clock_gettime");

	FUNC4(&tfinish, &tstart, &tfinish);

	return (tfinish);
}