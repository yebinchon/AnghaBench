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
struct wlan_iface {int /*<<< orphan*/ * country_code; int /*<<< orphan*/  reg_domain; int /*<<< orphan*/  wname; } ;
struct ieee80211_regdomain {int /*<<< orphan*/  location; int /*<<< orphan*/ * isocc; int /*<<< orphan*/  regdomain; } ;
typedef  int /*<<< orphan*/  regdomain ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_REGDOMAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_regdomain*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211_regdomain*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif)
{
	int val = 0;
	size_t argsize;
	struct ieee80211_regdomain regdomain;

	FUNC0(&regdomain, 0, sizeof(regdomain));
	argsize = sizeof(regdomain);

	if (FUNC1(wif->wname, IEEE80211_IOC_REGDOMAIN, &val, &regdomain,
	    &argsize, 0) < 0)
		return (-1);

	wif->reg_domain = FUNC2(regdomain.regdomain);
	wif->country_code[0] = regdomain.isocc[0];
	wif->country_code[1] = regdomain.isocc[1];
	wif->country_code[2] = regdomain.location;

	return (0);
}