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
struct TYPE_2__ {int sa_len; int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_1__ ifr_addr; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LINK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCSIFLLADDR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*) ; 

void FUNC8(unsigned char* mac, unsigned char *name) {
	int s;
	struct ifreq ifr;
	
	s = FUNC6(PF_INET, SOCK_DGRAM, 0);
	if (s == -1) {
		FUNC5("socket()");
		FUNC1(1);
	}

	FUNC4(&ifr, 0, sizeof(ifr));
	FUNC7(ifr.ifr_name, name);

	ifr.ifr_addr.sa_family = AF_LINK;
	ifr.ifr_addr.sa_len = 6;
	FUNC3(ifr.ifr_addr.sa_data, mac, 6);

	if (FUNC2(s, SIOCSIFLLADDR, &ifr) == -1) {
		FUNC5("ioctl(SIOCSIFLLADDR)");
		FUNC1(1);
	}

	FUNC0(s);
}