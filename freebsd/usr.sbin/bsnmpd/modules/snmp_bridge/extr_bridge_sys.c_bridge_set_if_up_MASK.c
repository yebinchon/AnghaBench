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
struct ifreq {int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; } ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(const char* b_name, int8_t up)
{
	int	flags;
	struct ifreq ifr;

	FUNC0(&ifr, sizeof(ifr));
	FUNC3(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));
	if (FUNC1(sock, SIOCGIFFLAGS, (caddr_t) &ifr) < 0) {
		FUNC4(LOG_ERR, "set bridge up: ioctl(SIOCGIFFLAGS) "
		    "failed: %s", FUNC2(errno));
		return (-1);
	}

	flags = (ifr.ifr_flags & 0xffff) | (ifr.ifr_flagshigh << 16);
	if (up == 1)
		flags |= IFF_UP;
	else
		flags &= ~IFF_UP;

	ifr.ifr_flags = flags & 0xffff;
	ifr.ifr_flagshigh = flags >> 16;
	if (FUNC1(sock, SIOCSIFFLAGS, (caddr_t) &ifr) < 0) {
		FUNC4(LOG_ERR, "set bridge up: ioctl(SIOCSIFFLAGS) "
		    "failed: %s", FUNC2(errno));
		return (-1);
	}

	return (0);
}