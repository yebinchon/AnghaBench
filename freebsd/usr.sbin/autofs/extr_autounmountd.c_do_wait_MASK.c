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
typedef  int time_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct kevent {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kevent*,int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4(int kq, time_t sleep_time)
{
	struct timespec timeout;
	struct kevent unused;
	int nevents;

	if (sleep_time != -1) {
		FUNC0(sleep_time > 0);
		timeout.tv_sec = sleep_time;
		timeout.tv_nsec = 0;

		FUNC2("waiting for filesystem event for %ld seconds",
		    (long)sleep_time);
		nevents = FUNC1(kq, NULL, 0, &unused, 1, &timeout);
	} else {
		FUNC2("waiting for filesystem event");
		nevents = FUNC1(kq, NULL, 0, &unused, 1, NULL);
	}
	if (nevents < 0) {
		if (errno == EINTR)
			return;
		FUNC3(1, "kevent");
	}

	if (nevents == 0) {
		FUNC2("timeout reached");
		FUNC0(sleep_time > 0);
	} else {
		FUNC2("got filesystem event");
	}
}