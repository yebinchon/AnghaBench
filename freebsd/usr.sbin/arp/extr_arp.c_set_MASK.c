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
struct timespec {int tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_family; int /*<<< orphan*/  sdl_index; int /*<<< orphan*/  sdl_type; void* sdl_alen; } ;
struct rt_msghdr {int rtm_flags; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sdl_m ;
typedef  int /*<<< orphan*/  max_age ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 void* ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 int RTF_ANNOUNCE ; 
 int RTF_BLACKHOLE ; 
 int RTF_GATEWAY ; 
 int RTF_REJECT ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int /*<<< orphan*/  RTM_GET ; 
 int FUNC1 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_dl*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int doing_proxy ; 
 struct ether_addr* FUNC4 (char*) ; 
 int expire_time ; 
 int flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ether_addr*) ; 
 struct sockaddr_in* FUNC6 (char*) ; 
 char* FUNC7 (TYPE_1__) ; 
 struct rt_msghdr* FUNC8 (int /*<<< orphan*/ ,struct sockaddr_in*,struct sockaddr_dl*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 

__attribute__((used)) static int
FUNC17(int argc, char **argv)
{
	struct sockaddr_in *addr;
	struct sockaddr_in *dst;	/* what are we looking for */
	struct sockaddr_dl *sdl;
	struct rt_msghdr *rtm;
	struct ether_addr *ea;
	char *host = argv[0], *eaddr = argv[1];
	struct sockaddr_dl sdl_m;

	argc -= 2;
	argv += 2;

	FUNC2(&sdl_m, sizeof(sdl_m));
	sdl_m.sdl_len = sizeof(sdl_m);
	sdl_m.sdl_family = AF_LINK;

	dst = FUNC6(host);
	if (dst == NULL)
		return (1);
	doing_proxy = flags = expire_time = 0;
	while (argc-- > 0) {
		if (FUNC9(argv[0], "temp") == 0) {
			struct timespec tp;
			int max_age;
			size_t len = sizeof(max_age);

			FUNC3(CLOCK_MONOTONIC, &tp);
			if (FUNC10("net.link.ether.inet.max_age",
			    &max_age, &len, NULL, 0) != 0)
				FUNC13(1, "sysctlbyname");
			expire_time = tp.tv_sec + max_age;
		} else if (FUNC9(argv[0], "pub") == 0) {
			flags |= RTF_ANNOUNCE;
			doing_proxy = 1;
			if (argc && FUNC9(argv[1], "only") == 0) {
				/*
				 * Compatibility: in pre FreeBSD 8 times
				 * the "only" keyword used to mean that
				 * an ARP entry should be announced, but
				 * not installed into routing table.
				 */
				argc--; argv++;
			}
		} else if (FUNC9(argv[0], "blackhole") == 0) {
			if (flags & RTF_REJECT) {
				FUNC14(1, "Choose one of blackhole or reject, "
				    "not both.");
			}
			flags |= RTF_BLACKHOLE;
		} else if (FUNC9(argv[0], "reject") == 0) {
			if (flags & RTF_BLACKHOLE) {
				FUNC14(1, "Choose one of blackhole or reject, "
				    "not both.");
			}
			flags |= RTF_REJECT;
		} else {
			FUNC16("Invalid parameter '%s'", argv[0]);
			FUNC11();
		}
		argv++;
	}
	ea = (struct ether_addr *)FUNC0(&sdl_m);
	if (doing_proxy && !FUNC9(eaddr, "auto")) {
		if (!FUNC5(dst->sin_addr.s_addr, ea)) {
			FUNC16("no interface found for %s",
			       FUNC7(dst->sin_addr));
			return (1);
		}
		sdl_m.sdl_alen = ETHER_ADDR_LEN;
	} else {
		struct ether_addr *ea1 = FUNC4(eaddr);

		if (ea1 == NULL) {
			FUNC16("invalid Ethernet address '%s'", eaddr);
			return (1);
		} else {
			*ea = *ea1;
			sdl_m.sdl_alen = ETHER_ADDR_LEN;
		}
	}

	/*
	 * In the case a proxy-arp entry is being added for
	 * a remote end point, the RTF_ANNOUNCE flag in the
	 * RTM_GET command is an indication to the kernel
	 * routing code that the interface associated with
	 * the prefix route covering the local end of the
	 * PPP link should be returned, on which ARP applies.
	 */
	rtm = FUNC8(RTM_GET, dst, NULL);
	if (rtm == NULL) {
		FUNC15("%s", host);
		return (1);
	}
	addr = (struct sockaddr_in *)(rtm + 1);
	sdl = (struct sockaddr_dl *)(FUNC1(addr) + (char *)addr);

	if ((sdl->sdl_family != AF_LINK) ||
	    (rtm->rtm_flags & RTF_GATEWAY) ||
	    !FUNC12(sdl->sdl_type)) {
		FUNC16("cannot intuit interface index and type for %s", host);
		return (1);
	}
	sdl_m.sdl_type = sdl->sdl_type;
	sdl_m.sdl_index = sdl->sdl_index;
	return (FUNC8(RTM_ADD, dst, &sdl_m) == NULL);
}