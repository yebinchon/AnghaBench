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
typedef  scalar_t__ u_int32_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_4__ {long tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ global_stop_flag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 

__attribute__((used)) static int
FUNC8(int s, long duration, u_char *packet, u_int packet_len)
{
	struct timespec starttime, tmptime;
	struct itimerval it;
	u_int32_t counter;
	int send_errors, send_calls;

	if (FUNC7(SIGALRM, signal_handler) == SIG_ERR) {
		FUNC3("signal");
		return (-1);
	}

	if (FUNC1(CLOCK_REALTIME, &tmptime) == -1) {
		FUNC3("clock_getres");
		return (-1);
	}

	if (FUNC2(CLOCK_REALTIME, &starttime) == -1) {
		FUNC3("clock_gettime");
		return (-1);
	}

	it.it_interval.tv_sec = 0;
	it.it_interval.tv_usec = 0;
	it.it_value.tv_sec = duration;
	it.it_value.tv_usec = 0;

	if (FUNC6(ITIMER_REAL, &it, NULL) < 0) {
		FUNC3("setitimer");
		return (-1);
	}

	send_errors = send_calls = 0;
	counter = 0;
	while (global_stop_flag == 0) {
		/*
		 * We maintain and, if there's room, send a counter.  Note
		 * that even if the error is purely local, we still increment
		 * the counter, so missing sequence numbers on the receive
		 * side should not be assumed to be packets lost in transit.
		 * For example, if the UDP socket gets back an ICMP from a
		 * previous send, the error will turn up the current send
		 * operation, causing the current sequence number also to be
		 * skipped.
		 */
		if (packet_len >= 4) {
			FUNC0(packet, counter);
			counter++;
		}
		if (FUNC5(s, packet, packet_len, 0) < 0)
			send_errors++;
		send_calls++;
	}

	if (FUNC2(CLOCK_REALTIME, &tmptime) == -1) {
		FUNC3("clock_gettime");
		return (-1);
	}

	FUNC4("\n");
	FUNC4("start:             %zd.%09lu\n", starttime.tv_sec,
	    starttime.tv_nsec);
	FUNC4("finish:            %zd.%09lu\n", tmptime.tv_sec,
	    tmptime.tv_nsec);
	FUNC4("send calls:        %d\n", send_calls);
	FUNC4("send errors:       %d\n", send_errors);
	FUNC4("approx send rate:  %ld\n", (send_calls - send_errors) /
	    duration);
	FUNC4("approx error rate: %d\n", (send_errors / send_calls));

	return (0);
}