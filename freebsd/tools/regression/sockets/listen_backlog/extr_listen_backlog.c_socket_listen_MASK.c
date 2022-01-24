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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 scalar_t__ FUNC3 (int,int*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,char const*,int,int) ; 

__attribute__((used)) static int
FUNC6(int domain, int type, int protocol, int backlog,
    int create_backlog_assertion, int listen_backlog_assertion, int *sockp,
    const char *domainstring, const char *typestring, const char *testclass,
    const char *test)
{
	int backlog_retrieved, sock;

	sock = FUNC2(domain, type, protocol);
	if (sock < 0) {
		FUNC4("%s: %s: socket_listen: socket(%s, %s)", testclass,
		    test, domainstring, typestring);
		FUNC0(sock);
		return (-1);
	}

	if (FUNC3(sock, &backlog_retrieved, testclass, test,
	    "socket_listen") < 0) {
		FUNC0(sock);
		return (-1);
	}

	if (backlog_retrieved != create_backlog_assertion) {
		FUNC5("%s: %s: socket_listen: create backlog is %d not %d",
		    testclass, test, backlog_retrieved,
		    create_backlog_assertion);
		FUNC0(sock);
		return (-1);
	}

	if (FUNC1(sock, backlog) < 0) {
		FUNC4("%s: %s: socket_listen: listen(, %d)", testclass, test,
		    backlog);
		FUNC0(sock);
		return (-1);
	}

	if (FUNC3(sock, &backlog_retrieved, testclass, test,
	    "socket_listen") < 0) {
		FUNC0(sock);
		return (-1);
	}

	if (backlog_retrieved != listen_backlog_assertion) {
		FUNC5("%s: %s: socket_listen: listen backlog is %d not %d",
		    testclass, test, backlog_retrieved,
		    listen_backlog_assertion);
		FUNC0(sock);
		return (-1);
	}

	*sockp = sock;
	return (0);
}