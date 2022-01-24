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
struct ifmediareq {int ifm_current; int /*<<< orphan*/  ifm_name; } ;
typedef  int /*<<< orphan*/  ifmr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int IFM_IEEE80211_WDS ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmediareq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC4(int s, const char *ifname)
{
	struct ifmediareq ifmr;

	FUNC2(&ifmr, 0, sizeof(ifmr));
	FUNC3(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
	if (FUNC1(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0)
		FUNC0(-1, "%s: cannot get media", ifname);
	return (ifmr.ifm_current & IFM_IEEE80211_WDS) != 0;
}