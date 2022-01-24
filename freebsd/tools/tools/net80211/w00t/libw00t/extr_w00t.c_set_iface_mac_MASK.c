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
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(char *iface, char *mac)
{
	int s, rc;
	struct ifreq ifr;

	s = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (s == -1)
		return -1;
	
	FUNC3(&ifr, 0, sizeof(ifr));
	FUNC5(ifr.ifr_name, iface);

	ifr.ifr_addr.sa_family = AF_LINK;
	ifr.ifr_addr.sa_len = 6;
	FUNC2(ifr.ifr_addr.sa_data, mac, 6);

	rc = FUNC1(s, SIOCSIFLLADDR, &ifr);

	FUNC0(s);

	return rc;
}