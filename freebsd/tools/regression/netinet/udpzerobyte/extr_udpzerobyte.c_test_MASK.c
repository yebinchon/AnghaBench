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
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(int domain, const char *domainstr, struct sockaddr *sa, socklen_t salen)
{
	int sock_send, sock_receive;
	ssize_t size;

	sock_send = FUNC8(domain, SOCK_DGRAM, 0);
	if (sock_send < 0)
		FUNC2(-1, "socket(%s, SOCK_DGRAM, 0)", domainstr);

	sock_receive = FUNC8(domain, SOCK_DGRAM, 0);
	if (sock_receive < 0)
		FUNC2(-1, "socket(%s, SOCK_DGRAM, 0)", domainstr);

	if (FUNC0(sock_receive, sa, salen) < 0)
		FUNC2(-1, "Protocol %s bind(sock_receive)", domainstr);
	if (FUNC4(sock_receive, F_SETFL, O_NONBLOCK, 1) < 0)
		FUNC2(-1, "Protocll %s fcntl(sock_receive, FL_SETFL, "
		    "O_NONBLOCK)", domainstr);

	if (FUNC1(sock_send, sa, salen) < 0)
		FUNC2(-1, "Protocol %s connect(sock_send)", domainstr);

	size = FUNC5(sock_receive, NULL, 0, 0);
	if (size > 0)
		FUNC3(-1, "Protocol %s recv(sock_receive, NULL, 0) before: %zd",
		    domainstr, size);
	else if (size < 0)
		FUNC2(-1, "Protocol %s recv(sock_receive, NULL, 0) before",
		    domainstr);

	size = FUNC6(sock_send, NULL, 0, 0);
	if (size < 0)
		FUNC2(-1, "Protocol %s send(sock_send, NULL, 0)", domainstr);

	(void)FUNC7(1);
	size = FUNC5(sock_receive, NULL, 0, 0);
	if (size < 0)
		FUNC2(-1, "Protocol %s recv(sock_receive, NULL, 0) test",
		    domainstr);

	size = FUNC5(sock_receive, NULL, 0, 0);
	if (size > 0)
		FUNC3(-1, "Protocol %s recv(sock_receive, NULL, 0) after: %zd",
		    domainstr, size);
	else if (size < 0)
		FUNC2(-1, "Protocol %s recv(sock_receive, NULL, 0) after",
		    domainstr);
}