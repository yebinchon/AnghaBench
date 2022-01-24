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
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_2__ {struct ifreq ireq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_CHANNEL ; 
 unsigned int IFF_PPROMISC ; 
 unsigned int IFF_UP ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  ioctl_s ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(char *dev) {
        struct ifreq ifr;
        unsigned int flags;

        // set chan
        FUNC2(&chaninfo.ireq, 0, sizeof(chaninfo.ireq));
        FUNC4(chaninfo.ireq.i_name, dev);
        chaninfo.ireq.i_type = IEEE80211_IOC_CHANNEL;

        FUNC3(1);

        // set iface up and promisc
        FUNC2(&ifr, 0, sizeof(ifr));
        FUNC4(ifr.ifr_name, dev);
        if (FUNC1(ioctl_s, SIOCGIFFLAGS, &ifr) == -1)
                FUNC0(1, "ioctl(SIOCGIFFLAGS)");
        
        flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
        flags |= IFF_UP | IFF_PPROMISC;
        
        FUNC2(&ifr, 0, sizeof(ifr));
        FUNC4(ifr.ifr_name, dev);
        ifr.ifr_flags = flags & 0xffff;
        ifr.ifr_flagshigh = flags >> 16;
        if (FUNC1(ioctl_s, SIOCSIFFLAGS, &ifr) == -1)
                FUNC0(1, "ioctl(SIOCSIFFLAGS)");
}