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

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(const char *ifnam, int flags)
{
	struct ifreq ifr;
	int fd, error;
	unsigned int oflags = 0;

	FUNC2(&ifr, 0, sizeof(struct ifreq));
	FUNC4(ifr.ifr_name, ifnam, sizeof(ifr.ifr_name));

	fd = FUNC3(AF_INET, SOCK_DGRAM, 0);
	if (fd < 0)
		return (-1);

	error = FUNC1(fd, SIOCGIFFLAGS, &ifr);
	if (error == 0) {
		oflags = (ifr.ifr_flags & 0xffff)  | (ifr.ifr_flagshigh << 16);
	}

	if (flags < 0)
		oflags &= ~(-flags);
	else
		oflags |= flags;

	ifr.ifr_flags = oflags & 0xffff;
	ifr.ifr_flagshigh = oflags >> 16;

	error = FUNC1(fd, SIOCSIFFLAGS, &ifr);
	if (error != 0)
		FUNC5("ioctl SIOCSIFFLAGS");

	FUNC0(fd);
	return (error);
}