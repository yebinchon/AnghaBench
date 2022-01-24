#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct wlan_iface {int nchannels; char* country_code; int /*<<< orphan*/  reg_domain; int /*<<< orphan*/  state; int /*<<< orphan*/  wname; int /*<<< orphan*/  chanlist; } ;
struct TYPE_5__ {char* isocc; char location; int /*<<< orphan*/  regdomain; } ;
struct TYPE_4__ {int ic_nchans; TYPE_3__* ic_chans; } ;
struct ieee80211_regdomain_req {TYPE_2__ rd; TYPE_1__ chaninfo; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_6__ {int ic_maxregpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_REGDOMAIN ; 
 int /*<<< orphan*/  IEEE80211_IOC_TXPOWMAX ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_regdomain_req*) ; 
 struct ieee80211_regdomain_req* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_regdomain_req*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wlanIfaceState_down ; 
 int /*<<< orphan*/  wlanIfaceState_up ; 
 scalar_t__ FUNC6 (struct wlan_iface*,int) ; 
 scalar_t__ FUNC7 (struct wlan_iface*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211_regdomain_req*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct wlan_iface *wif, char *ccode, int rdomain)
{
	int val = 0, txpowermax;
	uint32_t i;
	size_t argsize = 0;
	struct ieee80211_regdomain_req *regdomain;

	if (FUNC7(wif) < 0)
		return (-1);

	if (wif->nchannels == 0) {
		FUNC5(LOG_ERR, "iface %s - set regdomain failed", wif->wname);
		return (-1);
	}

	if (FUNC8(wif->wname, IEEE80211_IOC_TXPOWMAX, &txpowermax, 0,
	    &argsize, 0) < 0)
		return (-1);

	regdomain = FUNC2(FUNC0(wif->nchannels));
	if (regdomain == NULL)
		return (-1);
	FUNC4(regdomain, 0, FUNC0(wif->nchannels));
	argsize = FUNC0(wif->nchannels);

	/* XXX: recheck with how this is done by ifconfig(8) */
	regdomain->rd.regdomain = FUNC10(rdomain);
	regdomain->rd.isocc[0] = ccode[0];
	regdomain->rd.isocc[1] = ccode[1];
	regdomain->rd.location = ccode[2];

	/* XXX: fill the channel list properly */
	regdomain->chaninfo.ic_nchans = wif->nchannels;
	FUNC3(regdomain->chaninfo.ic_chans, wif->chanlist,
	    wif->nchannels * sizeof(struct ieee80211_channel));
	for (i = 0; i < wif->nchannels; i++)
		regdomain->chaninfo.ic_chans[i].ic_maxregpower = txpowermax;

	wif->state = wlanIfaceState_down;
	if (FUNC6(wif, 1) < 0 ||
	    FUNC8(wif->wname, IEEE80211_IOC_REGDOMAIN, &val, regdomain,
	    &argsize, 1) < 0) {
		FUNC1(regdomain);
		return (-1);
	}

	wif->state = wlanIfaceState_up;
	(void)FUNC6(wif, 1);
	wif->reg_domain = FUNC9(regdomain->rd.regdomain);
	wif->country_code[0] = regdomain->rd.isocc[0];
	wif->country_code[1] = regdomain->rd.isocc[1];
	wif->country_code[2] = regdomain->rd.location;
	FUNC1(regdomain);

	return (0);
}