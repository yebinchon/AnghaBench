#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  long uint64_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int u_int ;
struct timespec {long tv_nsec; int tv_sec; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_port; } ;
struct _a {long duration; int port; int port_max; int packet_len; TYPE_1__ sin; int /*<<< orphan*/  packet; int /*<<< orphan*/  s; int /*<<< orphan*/  sin6; scalar_t__ ipv6; struct timespec interval; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC11 (struct timespec*,struct timespec*) ; 
 int FUNC12 (struct timespec,struct timespec*,long long*) ; 

__attribute__((used)) static int
FUNC13(struct _a *a)
{
	struct timespec nexttime, starttime, tmptime;
	long long waited;
	u_int32_t counter;
	long finishtime;
	long send_errors, send_calls;
	/* do not call gettimeofday more than every 20us */
	long minres_ns = 200000;
	int ic, gettimeofday_cycles;
	int cur_port;
	uint64_t n, ns;

	if (FUNC1(CLOCK_REALTIME, &tmptime) == -1) {
		FUNC6("clock_getres");
		return (-1);
	}

	ns = a->interval.tv_nsec;
	if (FUNC11(&tmptime, &a->interval))
		FUNC4(stderr,
		    "warning: interval (%jd.%09ld) less than resolution (%jd.%09ld)\n",
		    (intmax_t)a->interval.tv_sec, a->interval.tv_nsec,
		    (intmax_t)tmptime.tv_sec, tmptime.tv_nsec);
		/* interval too short, limit the number of gettimeofday()
		 * calls, but also make sure there is at least one every
		 * some 100 packets.
		 */
	if ((long)ns < minres_ns/100)
		gettimeofday_cycles = 100;
	else
		gettimeofday_cycles = minres_ns/ns;
	FUNC4(stderr,
	    "calling time every %d cycles\n", gettimeofday_cycles);

	if (FUNC2(CLOCK_REALTIME, &starttime) == -1) {
		FUNC6("clock_gettime");
		return (-1);
	}
	tmptime.tv_sec = 2;
	tmptime.tv_nsec = 0;
	FUNC10(&starttime, &tmptime);
	starttime.tv_nsec = 0;
	if (FUNC12(starttime, NULL, NULL) == -1)
		return (-1);
	nexttime = starttime;
	finishtime = starttime.tv_sec + a->duration;

	send_errors = send_calls = 0;
	counter = 0;
	waited = 0;
	ic = gettimeofday_cycles;
	cur_port = a->port;
	if (a->port == a->port_max) {
		if (a->ipv6) {
			if (FUNC3(a->s, (struct sockaddr *)&a->sin6, sizeof(a->sin6))) {
				FUNC6("connect (ipv6)");
				return (-1);
			}
		} else {
			if (FUNC3(a->s, (struct sockaddr *)&a->sin, sizeof(a->sin))) {
				FUNC6("connect (ipv4)");
				return (-1);
			}
		}
	}
	while (1) {
		int ret;

		FUNC10(&nexttime, &a->interval);
		if (--ic <= 0) {
			ic = gettimeofday_cycles;
			if (FUNC12(nexttime, &tmptime, &waited) == -1)
				return (-1);
		}
		/*
		 * We maintain and, if there's room, send a counter.  Note
		 * that even if the error is purely local, we still increment
		 * the counter, so missing sequence numbers on the receive
		 * side should not be assumed to be packets lost in transit.
		 * For example, if the UDP socket gets back an ICMP from a
		 * previous send, the error will turn up the current send
		 * operation, causing the current sequence number also to be
		 * skipped.
		 * The counter is incremented only on the initial port number,
		 * so all destinations will see the same set of packets.
		 */
		if (cur_port == a->port && a->packet_len >= 4) {
			FUNC0(a->packet, counter);
			counter++;
		}
		if (a->port == a->port_max) { /* socket already bound */
			ret = FUNC8(a->s, a->packet, a->packet_len, 0);
		} else {
			a->sin.sin_port = FUNC5(cur_port++);
			if (cur_port > a->port_max)
				cur_port = a->port;
			if (a->ipv6) {
			ret = FUNC9(a->s, a->packet, a->packet_len, 0,
			    (struct sockaddr *)&a->sin6, sizeof(a->sin6));
			} else {
			ret = FUNC9(a->s, a->packet, a->packet_len, 0,
				(struct sockaddr *)&a->sin, sizeof(a->sin));
			}
		}
		if (ret < 0)
			send_errors++;
		send_calls++;
		if (a->duration != 0 && tmptime.tv_sec >= finishtime)
			goto done;
	}

done:
	if (FUNC2(CLOCK_REALTIME, &tmptime) == -1) {
		FUNC6("clock_gettime");
		return (-1);
	}

	FUNC7("\n");
	FUNC7("start:             %jd.%09ld\n", (intmax_t)starttime.tv_sec,
	    starttime.tv_nsec);
	FUNC7("finish:            %jd.%09ld\n", (intmax_t)tmptime.tv_sec,
	    tmptime.tv_nsec);
	FUNC7("send calls:        %ld\n", send_calls);
	FUNC7("send errors:       %ld\n", send_errors);
	FUNC7("approx send rate:  %ld pps\n", (send_calls - send_errors) /
	    a->duration);
	n = send_calls - send_errors;
	if (n > 0) {
		ns = (tmptime.tv_sec - starttime.tv_sec) * 1000000000UL +
			(tmptime.tv_nsec - starttime.tv_nsec);
		n = ns / n;
	}
	FUNC7("time/packet:       %u ns\n", (u_int)n);
	FUNC7("approx error rate: %ld\n", (send_errors / send_calls));
	FUNC7("waited:            %lld\n", waited);
	FUNC7("approx waits/sec:  %lld\n", (long long)(waited / a->duration));
	FUNC7("approx wait rate:  %lld\n", (long long)(waited / send_calls));

	return (0);
}