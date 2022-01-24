#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dl {int sdl_index; } ;
struct sockaddr {int sa_family; } ;
struct rt_msghdr {scalar_t__ rtm_version; int /*<<< orphan*/  rtm_msglen; } ;
struct ifmap_entry {int dummy; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_7__ {char* ifname; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int AF_UNSPEC ; 
 int CTL_NET ; 
 int EX_OSERR ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int NET_RT_DUMP ; 
 int PF_ROUTE ; 
 scalar_t__ RTM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifaddrs*) ; 
 scalar_t__ FUNC7 (struct ifaddrs**) ; 
 TYPE_2__* ifmap ; 
 int ifmap_size ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct rt_msghdr*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_2__* FUNC14 (TYPE_2__*,int) ; 
 int FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wid_dst ; 
 int wid_expire ; 
 int wid_flags ; 
 int /*<<< orphan*/  wid_gw ; 
 int /*<<< orphan*/  wid_if ; 
 int wid_mtu ; 
 int wid_pksent ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void
FUNC24(int fibnum, int af)
{
	size_t needed;
	int mib[7];
	char *buf, *next, *lim;
	struct rt_msghdr *rtm;
	struct sockaddr *sa;
	int fam = AF_UNSPEC, ifindex = 0, size;
	int need_table_close = false;

	struct ifaddrs *ifap, *ifa;
	struct sockaddr_dl *sdl;

	/*
	 * Retrieve interface list at first
	 * since we need #ifindex -> if_xname match
	 */
	if (FUNC7(&ifap) != 0)
		FUNC3(EX_OSERR, "getifaddrs");

	for (ifa = ifap; ifa; ifa = ifa->ifa_next) {
		
		if (ifa->ifa_addr->sa_family != AF_LINK)
			continue;

		sdl = (struct sockaddr_dl *)ifa->ifa_addr;
		ifindex = sdl->sdl_index;

		if (ifindex >= ifmap_size) {
			size = FUNC15(ifindex + 1, 32) *
			    sizeof(struct ifmap_entry);
			if ((ifmap = FUNC14(ifmap, size)) == NULL)
				FUNC4(2, "realloc(%d) failed", size);
			FUNC9(&ifmap[ifmap_size], 0,
			    size - ifmap_size *
			    sizeof(struct ifmap_entry));

			ifmap_size = FUNC15(ifindex + 1, 32);
		}

		if (*ifmap[ifindex].ifname != '\0')
			continue;

		FUNC16(ifmap[ifindex].ifname, ifa->ifa_name, IFNAMSIZ);
	}

	FUNC6(ifap);

	mib[0] = CTL_NET;
	mib[1] = PF_ROUTE;
	mib[2] = 0;
	mib[3] = af;
	mib[4] = NET_RT_DUMP;
	mib[5] = 0;
	mib[6] = fibnum;
	if (FUNC17(mib, FUNC10(mib), NULL, &needed, NULL, 0) < 0)
		FUNC3(EX_OSERR, "sysctl: net.route.0.%d.dump.%d estimate", af,
		    fibnum);
	if ((buf = FUNC8(needed)) == NULL)
		FUNC4(2, "malloc(%lu)", (unsigned long)needed);
	if (FUNC17(mib, FUNC10(mib), buf, &needed, NULL, 0) < 0)
		FUNC3(1, "sysctl: net.route.0.%d.dump.%d", af, fibnum);
	lim  = buf + needed;
	FUNC21("route-table");
	FUNC23("rt-family");
	for (next = buf; next < lim; next += rtm->rtm_msglen) {
		rtm = (struct rt_msghdr *)next;
		if (rtm->rtm_version != RTM_VERSION)
			continue;
		/*
		 * Peek inside header to determine AF
		 */
		sa = (struct sockaddr *)(rtm + 1);
		/* Only print family first time. */
		if (fam != sa->sa_family) {
			if (need_table_close) {
				FUNC20("rt-entry");
				FUNC19("rt-family");
			}
			need_table_close = true;

			fam = sa->sa_family;
			wid_dst = FUNC0(fam);
			wid_gw = FUNC1(fam);
			wid_flags = 6;
			wid_pksent = 8;
			wid_mtu = 6;
			wid_if = FUNC2(fam);
			wid_expire = 6;
			FUNC22("rt-family");
			FUNC12(fam);
			FUNC23("rt-entry");

			FUNC13(fam);
		}
		FUNC11("rt-entry", rtm);
	}
	if (need_table_close) {
		FUNC20("rt-entry");
		FUNC19("rt-family");
	}
	FUNC20("rt-family");
	FUNC18("route-table");
	FUNC5(buf);
}