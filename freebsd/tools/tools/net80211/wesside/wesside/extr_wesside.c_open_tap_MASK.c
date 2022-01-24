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
struct stat {int /*<<< orphan*/  st_rdev; } ;
struct ifreq {int ifr_mtu; int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 unsigned int IFF_UP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  TAP_DEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tapdev ; 
 int tapfd ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

void FUNC13() {
	struct stat st;
	int s;
	struct ifreq ifr;
	unsigned int flags;
	
	tapfd = FUNC6(TAP_DEV, O_RDWR);
	if (tapfd == -1) {
		FUNC8("Can't open tap: %s\n", FUNC11(errno));
		FUNC2(1);
	}
	if(FUNC3(tapfd, &st) == -1) {
		FUNC7("fstat()");
		FUNC2(1);
	}

	// feer
	FUNC10(tapdev, FUNC1(st.st_rdev, S_IFCHR));

	s = FUNC9(PF_INET, SOCK_DGRAM, 0);
	if (s == -1) {
		FUNC7("socket()");
		FUNC2(1);
	}
	
	// MTU
	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC10(ifr.ifr_name, tapdev);
	ifr.ifr_mtu = 1500;
	if (FUNC4(s, SIOCSIFMTU, &ifr) == -1) {
		FUNC7("ioctl(SIOCSIFMTU)");
		FUNC2(1);
	}

	// set iface up
	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC10(ifr.ifr_name, tapdev);
	if (FUNC4(s, SIOCGIFFLAGS, &ifr) == -1) {
		FUNC7("ioctl(SIOCGIFFLAGS)");
		FUNC2(1);
	}

	flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
	flags |= IFF_UP;
	
	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC10(ifr.ifr_name, tapdev);
	ifr.ifr_flags = flags & 0xffff;
	ifr.ifr_flagshigh = flags >> 16;
	if (FUNC4(s, SIOCSIFFLAGS, &ifr) == -1) {
		FUNC7("ioctl(SIOCSIFFLAGS)");
		FUNC2(1);
	}

	FUNC0(s);
	FUNC12("Opened tap device: %s\n", tapdev);
}