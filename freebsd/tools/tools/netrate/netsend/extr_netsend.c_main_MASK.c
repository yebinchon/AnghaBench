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
struct addrinfo {scalar_t__ ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct TYPE_4__ {void* sin_port; void* sin6_port; } ;
struct _a {int ipv6; long port; long port_max; long packet_len; int s; void* duration; TYPE_1__ interval; struct _a* packet; TYPE_2__ sin; TYPE_2__ sin6; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 long MAX_RATE ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct _a*,long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 void* FUNC5 (long) ; 
 struct _a* FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,long,int /*<<< orphan*/ ,int,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC12 (char*,char**,int) ; 
 int FUNC13 (struct _a*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char *argv[])
{
	long rate, payloadsize, port;
	char *dummy;
	struct _a a;	/* arguments */
	struct addrinfo hints, *res, *ressave;

	FUNC0(&a, sizeof(a));

	if (argc != 6)
		FUNC14();

	FUNC8(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;

	if (FUNC4(argv[1], NULL, &hints, &res) != 0) {
		FUNC2(stderr, "Couldn't resolv %s\n", argv[1]);
		return (-1);
	}
	ressave = res;
	while (res) {
		if (res->ai_family == AF_INET) {
			FUNC7(&a.sin, res->ai_addr, res->ai_addrlen);
			a.ipv6 = 0;
			break;
		} else if (res->ai_family == AF_INET6) {
			FUNC7(&a.sin6, res->ai_addr, res->ai_addrlen);
			a.ipv6 = 1;
			break;
		} 
		res = res->ai_next;
	}
	if (!res) {
		FUNC2(stderr, "Couldn't resolv %s\n", argv[1]);
		FUNC1(1);
	}
	FUNC3(ressave);

	port = FUNC12(argv[2], &dummy, 10);
	if (port < 1 || port > 65535)
		FUNC14();
	if (*dummy != '\0' && *dummy != '-')
		FUNC14();
	if (a.ipv6)
		a.sin6.sin6_port = FUNC5(port);
	else
		a.sin.sin_port = FUNC5(port);
	a.port = a.port_max = port;
	if (*dummy == '-') {	/* set high port */
		port = FUNC12(dummy + 1, &dummy, 10);
		if (port < a.port || port > 65535)
			FUNC14();
		a.port_max = port;
	}

	payloadsize = FUNC12(argv[3], &dummy, 10);
	if (payloadsize < 0 || *dummy != '\0')
		FUNC14();
	if (payloadsize > 32768) {
		FUNC2(stderr, "payloadsize > 32768\n");
		return (-1);
	}
	a.packet_len = payloadsize;

	/*
	 * Specify an arbitrary limit.  It's exactly that, not selected by
	 * any particular strategy.  '0' is a special value meaning "blast",
	 * and avoids the cost of a timing loop.
	 */
	rate = FUNC12(argv[4], &dummy, 10);
	if (rate < 0 || *dummy != '\0')
		FUNC14();
	if (rate > MAX_RATE) {
		FUNC2(stderr, "packet rate at most %ld\n", MAX_RATE);
		return (-1);
	}

	a.duration = FUNC12(argv[5], &dummy, 10);
	if (a.duration < 0 || *dummy != '\0')
		FUNC14();

	a.packet = FUNC6(payloadsize);
	if (a.packet == NULL) {
		FUNC9("malloc");
		return (-1);
	}
	FUNC0(a.packet, payloadsize);
	if (rate == 0) {
		a.interval.tv_sec = 0;
		a.interval.tv_nsec = 0;
	} else if (rate == 1) {
		a.interval.tv_sec = 1;
		a.interval.tv_nsec = 0;
	} else {
		a.interval.tv_sec = 0;
		a.interval.tv_nsec = ((1 * 1000000000) / rate);
	}

	FUNC10("Sending packet of payload size %ld every %jd.%09lds for %ld "
	    "seconds\n", payloadsize, (intmax_t)a.interval.tv_sec,
	    a.interval.tv_nsec, a.duration);

	if (a.ipv6)
		a.s = FUNC11(PF_INET6, SOCK_DGRAM, 0);
	else
		a.s = FUNC11(PF_INET, SOCK_DGRAM, 0);
	if (a.s == -1) {
		FUNC9("socket");
		return (-1);
	}

	return (FUNC13(&a));
}