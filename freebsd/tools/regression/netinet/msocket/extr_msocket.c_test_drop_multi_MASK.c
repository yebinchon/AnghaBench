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
struct ip_mreq {int /*<<< orphan*/  imr_interface; int /*<<< orphan*/  imr_multiaddr; } ;
typedef  int /*<<< orphan*/  imr ;

/* Variables and functions */
 scalar_t__ EADDRNOTAVAIL ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_DROP_MEMBERSHIP ; 
 int WARN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_mreq*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int sock, const char *socktype, struct ip_mreq imr,
    int flags)
{
	char buf[128];
	int ret;

	ret = FUNC2(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &imr,
	    sizeof(imr));
	if (ret < 0) {
		FUNC3(buf, FUNC1(imr.imr_multiaddr), 128);
		FUNC0(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
		    "%s, %s)", socktype, buf, FUNC1(imr.imr_interface));
	}
	if (ret == 0 && (flags & WARN_SUCCESS)) {
		FUNC3(buf, FUNC1(imr.imr_multiaddr), 128);
		FUNC4("WARN: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
		    "%s, %s) returned 0", socktype, buf,
		    FUNC1(imr.imr_interface));
	}

	/* Try a second time to make sure it's gone. */
	ret = FUNC2(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &imr,
	    sizeof(imr));	
	if (ret == 0) {
		FUNC3(buf, FUNC1(imr.imr_multiaddr), 128);
		FUNC0(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
		    "%s, %s) returned 0", socktype, buf,
		    FUNC1(imr.imr_interface));
	}
	if (ret < 0 && errno != EADDRNOTAVAIL) {
		FUNC3(buf, FUNC1(imr.imr_multiaddr), 128);
		FUNC0(-1, "FAIL: setsockopt(%s, IPPROTO_IP, IP_DROP_MEMBERSHIP "
		    "%s, %s)", socktype, buf, FUNC1(imr.imr_interface));
	}
}