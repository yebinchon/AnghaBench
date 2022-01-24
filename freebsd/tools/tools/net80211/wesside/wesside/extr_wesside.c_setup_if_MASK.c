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
struct ifreq {int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;
struct ifmediareq {int dummy; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_2__ {int s; scalar_t__ chan; struct ifreq ireq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_CHANNEL ; 
 unsigned int IFF_PPROMISC ; 
 unsigned int IFF_UP ; 
 scalar_t__ IFNAMSIZ ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mymac ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

void FUNC12(char *dev) {
	int s;
	struct ifreq ifr;
	unsigned int flags;
	struct ifmediareq ifmr;
	int *mwords;

	if(FUNC10(dev) >= IFNAMSIZ) {
		FUNC11("Interface name too long...\n");
		FUNC0(1);
	}

	FUNC11("Setting up %s... ", dev);
	FUNC1(stdout);
	
	FUNC7(mymac, dev);

	s = FUNC8(PF_INET, SOCK_DGRAM, 0);
	if (s == -1) {
		FUNC4("socket()");
		FUNC0(1);
	}

	// set chan
	FUNC3(&chaninfo.ireq, 0, sizeof(chaninfo.ireq));
	FUNC9(chaninfo.ireq.i_name, dev);
	chaninfo.ireq.i_type = IEEE80211_IOC_CHANNEL;
	
	chaninfo.chan = 0;
	chaninfo.s = s;
	FUNC6(1);

	// set iface up and promisc
	FUNC3(&ifr, 0, sizeof(ifr));
	FUNC9(ifr.ifr_name, dev);
	if (FUNC2(s, SIOCGIFFLAGS, &ifr) == -1) {
		FUNC4("ioctl(SIOCGIFFLAGS)");
		FUNC0(1);
	}

	flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
	flags |= IFF_UP | IFF_PPROMISC;
	
	FUNC3(&ifr, 0, sizeof(ifr));
	FUNC9(ifr.ifr_name, dev);
	ifr.ifr_flags = flags & 0xffff;
	ifr.ifr_flagshigh = flags >> 16;
	if (FUNC2(s, SIOCSIFFLAGS, &ifr) == -1) {
		FUNC4("ioctl(SIOCSIFFLAGS)");
		FUNC0(1);
	}

	FUNC5("done\n");
}