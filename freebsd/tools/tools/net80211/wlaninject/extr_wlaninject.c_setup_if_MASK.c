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
struct ifreq {int i_val; int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211req {int i_val; int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;
typedef  int /*<<< orphan*/  ireq ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_CHANNEL ; 
 unsigned int IFF_PPROMISC ; 
 unsigned int IFF_UP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCS80211 ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(char *dev, int chan) {
	int s;
	struct ifreq ifr;
	unsigned int flags;
	struct ifmediareq ifmr;
	int *mwords;
	struct ieee80211req ireq;

	if ((s = FUNC5(PF_INET, SOCK_DGRAM, 0)) == -1)
		FUNC1(1, "socket()");

	/* chan */
	FUNC3(&ireq, 0, sizeof(ireq));
	FUNC4(ireq.i_name, sizeof(ireq.i_name), "%s", dev);
	ireq.i_type = IEEE80211_IOC_CHANNEL;
	ireq.i_val = chan;
	if (FUNC2(s, SIOCS80211, &ireq) == -1)
		FUNC1(1, "ioctl(SIOCS80211)");

	/* UP & PROMISC */
	FUNC3(&ifr, 0, sizeof(ifr));
	FUNC4(ifr.ifr_name, sizeof(ifr.ifr_name), "%s", dev);
	if (FUNC2(s, SIOCGIFFLAGS, &ifr) == -1)
		FUNC1(1, "ioctl(SIOCGIFFLAGS)");
	flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
	flags |= IFF_UP | IFF_PPROMISC;
	ifr.ifr_flags = flags & 0xffff;
	ifr.ifr_flagshigh = flags >> 16;
	if (FUNC2(s, SIOCSIFFLAGS, &ifr) == -1)
		FUNC1(1, "ioctl(SIOCSIFFLAGS)");

	FUNC0(s);
}