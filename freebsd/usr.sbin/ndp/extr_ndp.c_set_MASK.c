#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct timeval {scalar_t__ tv_sec; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_len; int /*<<< orphan*/  sin6_scope_id; } ;
struct sockaddr_dl {scalar_t__ sdl_family; int sdl_type; int /*<<< orphan*/  sdl_index; } ;
struct rt_msghdr {int rtm_flags; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
struct TYPE_6__ {struct rt_msghdr m_rtm; } ;
struct TYPE_5__ {int sdl_alen; int sdl_type; int /*<<< orphan*/  sdl_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ AF_LINK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IFT_BRIDGE 134 
#define  IFT_ETHER 133 
#define  IFT_FDDI 132 
#define  IFT_ISO88023 131 
#define  IFT_ISO88024 130 
#define  IFT_ISO88025 129 
#define  IFT_L2VLAN 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ RTF_ANNOUNCE ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  RTM_GET ; 
 TYPE_1__ blank_sdl ; 
 struct sockaddr_in6 blank_sin ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 scalar_t__ expire_time ; 
 scalar_t__ flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ ) ; 
 TYPE_2__ m_rtmsg ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__ sdl_m ; 
 struct sockaddr_in6 sin_m ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC14(int argc, char **argv)
{
	register struct sockaddr_in6 *sin = &sin_m;
	register struct sockaddr_dl *sdl;
	register struct rt_msghdr *rtm = &(m_rtmsg.m_rtm);
	struct addrinfo hints, *res;
	int gai_error;
	u_char *ea;
	char *host = argv[0], *eaddr = argv[1];

	FUNC8();
	argc -= 2;
	argv += 2;
	sdl_m = blank_sdl;
	sin_m = blank_sin;

	FUNC3(&hints, sizeof(hints));
	hints.ai_family = AF_INET6;
	gai_error = FUNC7(host, NULL, &hints, &res);
	if (gai_error) {
		FUNC5(stderr, "ndp: %s: %s\n", host,
			FUNC6(gai_error));
		return 1;
	}
	sin->sin6_addr = ((struct sockaddr_in6 *)res->ai_addr)->sin6_addr;
	sin->sin6_scope_id =
	    ((struct sockaddr_in6 *)res->ai_addr)->sin6_scope_id;
	ea = (u_char *)FUNC2(&sdl_m);
	if (FUNC10(eaddr, ea) == 0)
		sdl_m.sdl_alen = 6;
	flags = expire_time = 0;
	while (argc-- > 0) {
		if (FUNC13(argv[0], "temp", 4) == 0) {
			struct timeval now;

			FUNC9(&now, 0);
			expire_time = now.tv_sec + 20 * 60;
		} else if (FUNC13(argv[0], "proxy", 5) == 0)
			flags |= RTF_ANNOUNCE;
		argv++;
	}
	if (FUNC12(RTM_GET) < 0) {
		FUNC4(1, "RTM_GET(%s) failed", host);
		/* NOTREACHED */
	}
	sin = (struct sockaddr_in6 *)(rtm + 1);
	sdl = (struct sockaddr_dl *)(FUNC0(sin->sin6_len) + (char *)sin);
	if (FUNC1(&sin->sin6_addr, &sin_m.sin6_addr)) {
		if (sdl->sdl_family == AF_LINK &&
		    !(rtm->rtm_flags & RTF_GATEWAY)) {
			switch (sdl->sdl_type) {
			case IFT_ETHER: case IFT_FDDI: case IFT_ISO88023:
			case IFT_ISO88024: case IFT_ISO88025:
			case IFT_L2VLAN: case IFT_BRIDGE:
				goto overwrite;
			}
		}
		FUNC5(stderr, "set: cannot configure a new entry\n");
		return 1;
	}

overwrite:
	if (sdl->sdl_family != AF_LINK) {
		FUNC11("cannot intuit interface index and type for %s\n", host);
		return (1);
	}
	sdl_m.sdl_type = sdl->sdl_type;
	sdl_m.sdl_index = sdl->sdl_index;
	return (FUNC12(RTM_ADD));
}