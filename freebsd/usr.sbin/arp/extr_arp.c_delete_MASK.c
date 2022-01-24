#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {scalar_t__ sdl_family; int /*<<< orphan*/  sdl_type; } ;
struct rt_msghdr {int rtm_flags; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int RTF_ANNOUNCE ; 
 int RTF_GATEWAY ; 
 int RTF_LLDATA ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  RTM_GET ; 
 int FUNC0 (struct sockaddr_in*) ; 
 int flags ; 
 struct sockaddr_in* FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 struct rt_msghdr* FUNC4 (int /*<<< orphan*/ ,struct sockaddr_in*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(char *host)
{
	struct sockaddr_in *addr, *dst;
	struct rt_msghdr *rtm;
	struct sockaddr_dl *sdl;

	dst = FUNC1(host);
	if (dst == NULL)
		return (1);

	/*
	 * Perform a regular entry delete first.
	 */
	flags &= ~RTF_ANNOUNCE;

	for (;;) {	/* try twice */
		rtm = FUNC4(RTM_GET, dst, NULL);
		if (rtm == NULL) {
			FUNC6("%s", host);
			return (1);
		}
		addr = (struct sockaddr_in *)(rtm + 1);
		sdl = (struct sockaddr_dl *)(FUNC0(addr) + (char *)addr);

		/*
		 * With the new L2/L3 restructure, the route
		 * returned is a prefix route. The important
		 * piece of information from the previous
		 * RTM_GET is the interface index. In the
		 * case of ECMP, the kernel will traverse
		 * the route group for the given entry.
		 */
		if (sdl->sdl_family == AF_LINK &&
		    !(rtm->rtm_flags & RTF_GATEWAY) &&
		    FUNC5(sdl->sdl_type) ) {
			addr->sin_addr.s_addr = dst->sin_addr.s_addr;
			break;
		}

		/*
		 * Regular entry delete failed, now check if there
		 * is a proxy-arp entry to remove.
		 */
		if (flags & RTF_ANNOUNCE) {
			FUNC7("delete: cannot locate %s", host);
			return (1);
		}

		flags |= RTF_ANNOUNCE;
	}
	rtm->rtm_flags |= RTF_LLDATA;
	if (FUNC4(RTM_DELETE, dst, NULL) != NULL) {
		FUNC3("%s (%s) deleted\n", host, FUNC2(addr->sin_addr));
		return (0);
	}
	return (1);
}