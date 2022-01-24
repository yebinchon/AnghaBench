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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC0 (int,long,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 char const* FUNC6 (int) ; 
 int FUNC7 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 char* FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char *argv[])
{
	long payloadsize, duration;
	struct addrinfo hints, *res, *res0;
	char *dummy, *packet;
	int port, s, error;
	const char *cause = NULL;

	if (argc != 5)
		FUNC13();

	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;

	port = FUNC12(argv[2], &dummy, 10);
	if (port < 1 || port > 65535 || *dummy != '\0') {
		FUNC4(stderr, "Invalid port number: %s\n", argv[2]);
		FUNC13();
		/*NOTREACHED*/
	}

	payloadsize = FUNC12(argv[3], &dummy, 10);
	if (payloadsize < 0 || *dummy != '\0')
		FUNC13();
	if (payloadsize > 32768) {
		FUNC4(stderr, "payloadsize > 32768\n");
		return (-1);
		/*NOTREACHED*/
	}

	duration = FUNC12(argv[4], &dummy, 10);
	if (duration < 0 || *dummy != '\0') {
		FUNC4(stderr, "Invalid duration time: %s\n", argv[4]);
		FUNC13();
		/*NOTREACHED*/
	}

	packet = FUNC8(payloadsize);
	if (packet == NULL) {
		FUNC10("malloc");
		return (-1);
		/*NOTREACHED*/
	}

	FUNC1(packet, payloadsize);
	error = FUNC7(argv[1],argv[2], &hints, &res0);
	if (error) {
		FUNC10(FUNC6(error));
		return (-1);
		/*NOTREACHED*/
	}
	s = -1;
	for (res = res0; res; res = res->ai_next) {
		s = FUNC11(res->ai_family, res->ai_socktype, 0);
		if (s < 0) {
			cause = "socket";
			continue;
		}

		if (FUNC3(s, res->ai_addr, res->ai_addrlen) < 0) {
			cause = "connect";
			FUNC2(s);
			s = -1;
			continue;
		}

		break;  /* okay we got one */
	}
	if (s < 0) {
		FUNC10(cause);
		return (-1);
		/*NOTREACHED*/
	}

	FUNC5(res0);

	return (FUNC0(s, duration, packet, payloadsize));

}