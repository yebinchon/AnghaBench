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
typedef  int /*<<< orphan*/  uc ;
typedef  scalar_t__ u_char ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int WARN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,char const*,scalar_t__,scalar_t__) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,scalar_t__*,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC5(int optname, const char *optstring, u_char defaultv,
    u_char modifiedv, u_char fakev, const char *socktype, int sock,
    int flags)
{
	socklen_t socklen;
	u_char uc;
	int ret;

	/*
	 * Check that we read back the expected default.
	 */
	uc = fakev;
	socklen = sizeof(uc);

	ret = FUNC2(sock, IPPROTO_IP, optname, &uc, &socklen);
	if (ret < 0)
		FUNC0(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC4("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);
	if (uc != defaultv)
		FUNC1(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) default is "
		    "%d not %d", socktype, optstring, uc, defaultv);

	/*
	 * Set to a modifiedv value, read it back and make sure it got there.
	 */
	uc = modifiedv;
	ret = FUNC3(sock, IPPROTO_IP, optname, &uc, sizeof(uc));
	if (ret == -1)
		FUNC0(-1, "FAIL: setsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC4("WARN: setsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);

	uc = fakev;
	socklen = sizeof(uc);
	ret = FUNC2(sock, IPPROTO_IP, optname, &uc, &socklen);
	if (ret < 0)
		FUNC0(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s)",
		    socktype, optstring);
	if (ret == 0 && (flags & WARN_SUCCESS))
		FUNC4("WARN: getsockopt(%s, IPPROTO_IP, %s) returned 0",
		    socktype, optstring);
	if (uc != modifiedv)
		FUNC1(-1, "FAIL: getsockopt(%s, IPPROTO_IP, %s) set value is "
		    "%d not %d", socktype, optstring, uc, modifiedv);
}