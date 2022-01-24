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
typedef  size_t uint32_t ;
struct wlan_iface {size_t nchannels; struct ieee80211_channel* chanlist; int /*<<< orphan*/  wname; } ;
struct ieee80211req_chanlist {size_t ic_nchans; int /*<<< orphan*/  ic_channels; struct ieee80211_channel* ic_chans; } ;
struct ieee80211req_chaninfo {size_t ic_nchans; int /*<<< orphan*/  ic_channels; struct ieee80211_channel* ic_chans; } ;
struct ieee80211_channel {int /*<<< orphan*/  ic_ieee; } ;
typedef  int /*<<< orphan*/  active ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_CHANINFO ; 
 int /*<<< orphan*/  IEEE80211_IOC_CHANLIST ; 
 int WLAN_SNMP_MAX_CHANS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211req_chanlist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_channel*,struct ieee80211_channel const*,int) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211req_chanlist*,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct wlan_iface *wif)
{
	int val = 0;
	uint32_t i, nchans;
	size_t argsize;
	struct ieee80211req_chaninfo *chaninfo;
	struct ieee80211req_chanlist active;
	const struct ieee80211_channel *c;

	argsize = sizeof(struct ieee80211req_chaninfo) +
	    sizeof(struct ieee80211_channel) * WLAN_SNMP_MAX_CHANS;
	chaninfo = (struct ieee80211req_chaninfo *)FUNC2(argsize);
	if (chaninfo == NULL)
		return (-1);

	if (FUNC5(wif->wname, IEEE80211_IOC_CHANINFO, &val, chaninfo,
	    &argsize, 0) < 0)
		return (-1);

	argsize = sizeof(active);
	if (FUNC5(wif->wname, IEEE80211_IOC_CHANLIST, &val, &active,
	    &argsize, 0) < 0)
		goto error;

	for (i = 0, nchans = 0; i < chaninfo->ic_nchans; i++) {
		c = &chaninfo->ic_chans[i];
		if (!FUNC1(active.ic_channels, c->ic_ieee))
				continue;
		nchans++;
	}
	wif->chanlist = (struct ieee80211_channel *)FUNC4(wif->chanlist,
	    nchans * sizeof(*c));
	if (wif->chanlist == NULL)
		goto error;
	wif->nchannels = nchans;
	for (i = 0, nchans = 0; i < chaninfo->ic_nchans; i++) {
		c = &chaninfo->ic_chans[i];
		if (!FUNC1(active.ic_channels, c->ic_ieee))
				continue;
		FUNC3(wif->chanlist + nchans, c, sizeof (*c));
		nchans++;
	}

	FUNC0(chaninfo);
	return (0);
error:
	wif->nchannels = 0;
	FUNC0(chaninfo);
	return (-1);
}