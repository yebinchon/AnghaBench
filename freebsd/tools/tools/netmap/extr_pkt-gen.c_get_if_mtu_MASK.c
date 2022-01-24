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
struct ifreq {char* ifr_name; int ifr_mtu; } ;
struct glob_arg {char* ifname; } ;
typedef  int /*<<< orphan*/  ifreq ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 size_t FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(const struct glob_arg *g)
{
	char ifname[IFNAMSIZ];
	struct ifreq ifreq;
	int s, ret;

	if (!FUNC7(g->ifname, "netmap:", 7) && !FUNC4(g->ifname, '{')
			&& !FUNC4(g->ifname, '}')) {
		/* Parse the interface name and ask the kernel for the
		 * MTU value. */
		FUNC8(ifname, g->ifname+7, IFNAMSIZ-1);
		ifname[FUNC5(ifname, "-*^{}/@")] = '\0';

		s = FUNC3(AF_INET, SOCK_DGRAM, 0);
		if (s < 0) {
			FUNC0("socket() failed: %s", FUNC6(errno));
			return s;
		}

		FUNC2(&ifreq, 0, sizeof(ifreq));
		FUNC8(ifreq.ifr_name, ifname, IFNAMSIZ);

		ret = FUNC1(s, SIOCGIFMTU, &ifreq);
		if (ret) {
			FUNC0("ioctl(SIOCGIFMTU) failed: %s", FUNC6(errno));
		}

		return ifreq.ifr_mtu;
	}

	/* This is a pipe or a VALE port, where the MTU is very large,
	 * so we use some practical limit. */
	return 65536;
}