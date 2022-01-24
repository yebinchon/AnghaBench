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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *b_name)
{
	struct ifreq ifr;

	FUNC0(&ifr, sizeof(ifr));
	FUNC3(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));

	if (FUNC1(sock, SIOCIFDESTROY, &ifr) < 0) {
		FUNC4(LOG_ERR, "destroy bridge: ioctl(SIOCIFDESTROY) "
		    "failed: %s", FUNC2(errno));
		return (-1);
	}

	return (0);
}