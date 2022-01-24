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
typedef  int uint16_t ;
struct sockaddr_storage {int ss_len; void* ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; void* sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_DONTROUTE ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC5 (int const) ; 
 int FUNC6 (void*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int) ; 
 scalar_t__ FUNC8 (int,char*,size_t const) ; 
 int FUNC9 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

int
FUNC14(int argc, char **argv)
{
	struct sockaddr_storage dst;
	int s, t;
	int opt;
	int ret;
	ssize_t len;
	const char* sendbuf = "Hello, World!";
	const size_t buflen = 80;
	char recvbuf[buflen];
	bool v6 = false;
	const char *addr, *tapdev;
	const uint16_t port = 46120;

	FUNC0(&dst, sizeof(dst));
	if (argc < 3 || argc > 4) {
		FUNC4(stderr, "Usage: %s [-6] ip_address tapdev\n", argv[0]);
		FUNC3(2);
	}

	if (FUNC12("-6", argv[1]) == 0) {
		v6 = true;
		addr = argv[2];
		tapdev = argv[3];
	} else {
		addr = argv[1];
		tapdev = argv[2];
	}

	t = FUNC7(tapdev, O_RDWR | O_NONBLOCK);
	if (t < 0)
		FUNC1(EXIT_FAILURE, "open");

	if (v6)
		s = FUNC11(PF_INET6, SOCK_DGRAM, 0);
	else
		s = FUNC11(PF_INET, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC1(EXIT_FAILURE, "socket");
	opt = 1;

	ret = FUNC10(s, SOL_SOCKET, SO_DONTROUTE, &opt, sizeof(opt));
	if (ret == -1)
		FUNC1(EXIT_FAILURE, "setsockopt(SO_DONTROUTE)");

	if (v6) {
		struct sockaddr_in6 *dst6 = ((struct sockaddr_in6*)&dst);

		dst.ss_len = sizeof(struct sockaddr_in6);
		dst.ss_family = AF_INET6;
		dst6->sin6_port = FUNC5(port);
		ret = FUNC6(AF_INET6, addr, &dst6->sin6_addr);
	} else {
		struct sockaddr_in *dst4 = ((struct sockaddr_in*)&dst);

		dst.ss_len = sizeof(struct sockaddr_in);
		dst.ss_family = AF_INET;
		dst4->sin_port = FUNC5(port);
		ret = FUNC6(AF_INET, addr, &dst4->sin_addr);
	}
	if (ret != 1)
		FUNC1(EXIT_FAILURE, "inet_pton returned %d", ret);

	ret = FUNC9(s, sendbuf, FUNC13(sendbuf), 0, (struct sockaddr*)&dst,
	    dst.ss_len);
	if (ret == -1)
		FUNC1(EXIT_FAILURE, "sendto");

	/* Verify that the packet went to the desired tap device */

	len = FUNC8(t, recvbuf, buflen);
	if (len == 0)
		FUNC2(EXIT_FAILURE, "read returned EOF");
	else if (len < 0 && errno == EAGAIN)
		FUNC2(EXIT_FAILURE, "Did not receive any packets");
	else if (len < 0)
		FUNC1(EXIT_FAILURE, "read");

	/*
	 * If read returned anything at all, consider it a success.  The packet
	 * should be an Ethernet frame containing an ARP request for
	 * ip_address.  We won't bother to decode it
	 */
	return (0);
}