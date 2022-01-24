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
typedef  scalar_t__ uint32_t ;
struct wlan_iface {scalar_t__ nchannels; scalar_t__ chanlist; scalar_t__ desired_channel; int /*<<< orphan*/  wname; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  chan ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_CURCHAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_channel*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct wlan_iface*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct ieee80211_channel*,size_t*,int) ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif, uint32_t dchannel)
{
	int val = 0;
	size_t argsize = sizeof(struct ieee80211_channel);
	struct ieee80211_channel chan;

	if (FUNC1(wif) < 0)
		return (-1);

	if (dchannel > wif->nchannels)
		return (-1);

	FUNC0(&chan, wif->chanlist + dchannel - 1, sizeof(chan));
	if (FUNC2(wif->wname, IEEE80211_IOC_CURCHAN, &val, &chan,
	    &argsize, 1) < 0)
		return (-1);

	wif->desired_channel = dchannel;

	return (0);
}