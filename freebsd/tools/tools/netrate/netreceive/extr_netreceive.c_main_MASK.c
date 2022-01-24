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
typedef  int /*<<< orphan*/  v ;
typedef  int u_short ;
struct td_desc {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int MAXSOCK ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 char const* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct td_desc**,int,int) ; 
 struct td_desc** FUNC8 (int*,int,int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,int) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char *argv[])
{
	struct addrinfo hints, *res, *res0;
	char *dummy, *packet;
	int port;
	int error, v, nthreads = 1;
	struct td_desc **tp;
	const char *cause = NULL;
	int s[MAXSOCK];
	int nsock;

	if (argc < 2)
		FUNC16();

	FUNC10(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_flags = AI_PASSIVE;

	port = FUNC15(argv[1], &dummy, 10);
	if (port < 1 || port > 65535 || *dummy != '\0')
		FUNC16();
	if (argc > 2)
		nthreads = FUNC15(argv[2], &dummy, 10);
	if (nthreads < 1 || nthreads > 64)
		FUNC16();

	packet = FUNC9(65536);
	if (packet == NULL) {
		FUNC11("malloc");
		return (-1);
	}
	FUNC1(packet, 65536);

	error = FUNC5(NULL, argv[1], &hints, &res0);
	if (error) {
		FUNC11(FUNC4(error));
		return (-1);
		/*NOTREACHED*/
	}

	nsock = 0;
	for (res = res0; res && nsock < MAXSOCK; res = res->ai_next) {
		s[nsock] = FUNC14(res->ai_family, res->ai_socktype,
		res->ai_protocol);
		if (s[nsock] < 0) {
			cause = "socket";
			continue;
		}

		v = 128 * 1024;
		if (FUNC13(s[nsock], SOL_SOCKET, SO_RCVBUF, &v, sizeof(v)) < 0) {
			cause = "SO_RCVBUF";
			FUNC2(s[nsock]);
			continue;
		}
		if (FUNC0(s[nsock], res->ai_addr, res->ai_addrlen) < 0) {
			cause = "bind";
			FUNC2(s[nsock]);
			continue;
		}
		(void) FUNC6(s[nsock], 5);
		nsock++;
	}
	if (nsock == 0) {
		FUNC11(cause);
		return (-1);
		/*NOTREACHED*/
	}

	FUNC12("netreceive %d sockets x %d threads listening on UDP port %d\n",
		nsock, nthreads, (u_short)port);

	tp = FUNC8(s, nsock, nthreads);
	FUNC7(tp, nsock, nthreads);

	/*NOTREACHED*/
	FUNC3(res0);
}