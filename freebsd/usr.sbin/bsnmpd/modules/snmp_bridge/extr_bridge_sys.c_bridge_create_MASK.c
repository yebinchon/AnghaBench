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
struct ifreq {char* ifr_data; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  struct ifreq* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCIFCREATE ; 
 int /*<<< orphan*/  SIOCSIFNAME ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  sock ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC8(const char *b_name)
{
	char *new_name;
	struct ifreq ifr;

	FUNC0(&ifr, sizeof(ifr));
	FUNC6(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));

	if (FUNC2(sock, SIOCIFCREATE, &ifr) < 0) {
		FUNC7(LOG_ERR, "create bridge: ioctl(SIOCIFCREATE) "
		    "failed: %s", FUNC5(errno));
		return (-1);
	}

	if (FUNC3(b_name, ifr.ifr_name) == 0)
		return (0);

	if ((new_name = FUNC4(b_name)) == NULL) {
		FUNC7(LOG_ERR, "create bridge: strdup() failed");
		return (-1);
	}

	ifr.ifr_data = new_name;
	if (FUNC2(sock, SIOCSIFNAME, (caddr_t) &ifr) < 0) {
		FUNC7(LOG_ERR, "create bridge: ioctl(SIOCSIFNAME) "
		    "failed: %s", FUNC5(errno));
		FUNC1(new_name);
		return (-1);
	}

	return (0);
}