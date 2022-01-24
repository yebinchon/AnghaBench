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
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 char* DISC_IFNAME ; 
 int /*<<< orphan*/  DISC_IFUNIT ; 
#define  EEXIST 128 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCIFCREATE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(void)
{
	struct ifreq ifr;
	int s;

	if (FUNC3("if_disc") < 0) {
		switch (errno) {
		case EEXIST:
			break;
		default:
			FUNC6("disc_setup: kldload(if_disc)");
			return (-1);
		}
	}

	s = FUNC5(PF_INET, SOCK_RAW, 0);
	if (s < 0) {
		FUNC6("disc_setup: socket(PF_INET, SOCK_RAW, 0)");
		return (-1);
	}

	FUNC0(&ifr, sizeof(ifr));
	FUNC4(ifr.ifr_name, sizeof(ifr.ifr_name), "%s%d", DISC_IFNAME,
	    DISC_IFUNIT);

	if (FUNC2(s, SIOCIFCREATE, &ifr) < 0) {
		FUNC6("disc_setup: ioctl(%s, SIOCIFCREATE)", ifr.ifr_name);
		FUNC1(s);
		return (-1);
	}

	FUNC1(s);
	return (0);
}