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
struct in_addr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ia ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int WARN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,struct in_addr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr) ; 
 scalar_t__ FUNC4 (struct in_addr*,struct in_addr*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC7(int optname, const char *optstring, struct in_addr defaultv,
    struct in_addr modifiedv, struct in_addr fakev, const char *socktype,
    int sock, int flags)
{
	socklen_t socklen;
	struct in_addr ia;
	int ret;

	/*
	 * Check that we read back the expected default.
	 */
	ia = fakev;
	socklen = sizeof(ia);

	ret = FUNC2(sock, IPPROTO_IP, optname, &ia, &socklen);
	if (ret < 0)
		FUNC0(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC6("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);
	if (FUNC4(&ia, &defaultv, sizeof(struct in_addr)))
		FUNC1(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) default is "
		    "%s not %s", socktype, optstring, FUNC3(ia),
		    FUNC3(defaultv));

	/*
	 * Set to a modifiedv value, read it back and make sure it got there.
	 */
	ia = modifiedv;
	ret = FUNC5(sock, IPPROTO_IP, optname, &ia, sizeof(ia));
	if (ret == -1)
		FUNC0(-1, "FAIL: setsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC6("WARN: setsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);

	ia = fakev;
	socklen = sizeof(ia);
	ret = FUNC2(sock, IPPROTO_IP, optname, &ia, &socklen);
	if (ret < 0)
		FUNC0(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC6("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);
	if (FUNC4(&ia, &modifiedv, sizeof(struct in_addr)))
		FUNC1(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) set value is "
		    "%s not %s", socktype, optstring, FUNC3(ia),
		    FUNC3(modifiedv));
}