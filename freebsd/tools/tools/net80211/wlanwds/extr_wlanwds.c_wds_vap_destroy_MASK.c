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
struct ieee80211req {int /*<<< orphan*/  i_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(const char *ifname)
{
	struct ieee80211req ifr;
	int s, status;

	s = FUNC3(AF_INET, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC5(LOG_ERR, "socket(SOCK_DRAGM): %m");
		return -1;
	}
	FUNC2(&ifr, 0, sizeof(ifr));
	FUNC4(ifr.i_name, ifname, IFNAMSIZ);
	if (FUNC1(s, SIOCIFDESTROY, &ifr) < 0) {
		FUNC5(LOG_ERR, "ioctl(SIOCIFDESTROY): %m");
		status = -1;
	} else
		status = 0;
	FUNC0(s);
	return status;
}