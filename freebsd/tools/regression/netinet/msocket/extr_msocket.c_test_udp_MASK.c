#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_3__ sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {void* s_addr; } ;
struct TYPE_4__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; } ;
struct in_addr {void* s_addr; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  message ;
typedef  int /*<<< orphan*/  if_addr ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_MULTICAST_IF ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 char* TEST_MADDR ; 
 int /*<<< orphan*/  UDP_PORT ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (char*) ; 
 int FUNC8 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC9 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in_addr*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,struct ip_mreq,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,struct ip_mreq,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct sockaddr_in sin;
	struct ip_mreq imr;
	struct in_addr if_addr;
	char message;
	ssize_t len;
	int sock;

	sock = FUNC11(PF_INET, SOCK_DGRAM, 0);
	if (sock < 0)
		FUNC3(-1, "FAIL: test_udp: socket(PF_INET, SOCK_DGRAM)");

	if (FUNC5(sock, F_SETFL, O_NONBLOCK) < 0)
		FUNC3(-1, "FAIL: test_udp: fcntl(F_SETFL, O_NONBLOCK)");

	FUNC1(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC6(UDP_PORT);
	sin.sin_addr.s_addr = FUNC7(TEST_MADDR);

	if (FUNC0(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC3(-1, "FAIL: test_udp: bind(udp_sock, 127.0.0.1:%d",
		    UDP_PORT);

	/* Arbitrary. */
	imr.imr_multiaddr.s_addr = FUNC7(TEST_MADDR);

	/* Localhost should be OK. */
	imr.imr_interface.s_addr = FUNC7("127.0.0.1");

	/*
	 * Tell socket what interface to send on -- use localhost.
	 */
	if_addr.s_addr = FUNC7("127.0.0.1");
	if (FUNC10(sock, IPPROTO_IP, IP_MULTICAST_IF, &if_addr,
	    sizeof(if_addr)) < 0)
		FUNC3(-1, "test_udp: setsockopt(IPPROTO_IP, IP_MULTICAST_IF)");

	FUNC12(sock, "udp_sock", imr, 0);

	FUNC1(&sin, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC6(UDP_PORT);
	sin.sin_addr.s_addr = FUNC7(TEST_MADDR);

	message = 'A';
	len = sizeof(message);
	len = FUNC9(sock, &message, len, 0, (struct sockaddr *)&sin,
	    sizeof(sin));
	if (len < 0)
		FUNC3(-1, "test_udp: sendto");

	if (len != sizeof(message))
		FUNC4(-1, "test_udp: sendto: expected to send %d, instead %d",
		    sizeof(message), len);

	message = 'B';
	len = sizeof(sin);
	len = FUNC8(sock, &message, sizeof(message), 0,
	    (struct sockaddr *)&sin, &len);
	if (len < 0)
		FUNC3(-1, "test_udp: recvfrom");

	if (len != sizeof(message))
		FUNC4(-1, "test_udp: recvfrom: len %d != message len %d",
		    len, sizeof(message));

	if (message != 'A')
		FUNC4(-1, "test_udp: recvfrom: expected 'A', got '%c'",
		    message);

	FUNC13(sock, "udp_sock", imr, 0);

	FUNC2(sock);
}