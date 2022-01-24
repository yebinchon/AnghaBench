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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LISTENQLIMIT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC3(int sock, int *backlogp, const char *testclass,
    const char *test, const char *testfunc)
{
	socklen_t len;
	int i;

	len = sizeof(i);
	if (FUNC0(sock, SOL_SOCKET, SO_LISTENQLIMIT, &i, &len) < 0) {
		FUNC1("%s: %s: %s: socket_get_backlog: getsockopt("
		    "SOL_SOCKET, SO_LISTENQLIMIT)", testclass, test,
		    testfunc);
		return (-1);
	}

	if (len != sizeof(i)) {
		FUNC2("%s: %s: %s: socket_get_backlog: getsockopt("
		    "SOL_SOCKET, SO_LISTENQLIMIT): returned size %d",
		    testclass, test, testfunc, len);
		return (-1);
	}

	*backlogp = i;

	return (0);
}