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
struct ieee80211com {int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/ * ic_txchan; struct ieee80211_radiotap_header* ic_th; int /*<<< orphan*/ * ic_rxchan; struct ieee80211_radiotap_header* ic_rh; } ;
struct ieee80211_radiotap_header {int it_present; } ;

/* Variables and functions */
 int IEEE80211_RADIOTAP_CHANNEL ; 
 int IEEE80211_RADIOTAP_XCHANNEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ieee80211com *ic)
{
	if (ic->ic_rxchan != NULL) {
		struct ieee80211_radiotap_header *rh = ic->ic_rh;

		if (rh->it_present & FUNC0(1<<IEEE80211_RADIOTAP_XCHANNEL))
			FUNC2(ic->ic_rxchan, ic->ic_curchan);
		else if (rh->it_present & FUNC0(1<<IEEE80211_RADIOTAP_CHANNEL))
			FUNC1(ic->ic_rxchan, ic->ic_curchan);
	}
	if (ic->ic_txchan != NULL) {
		struct ieee80211_radiotap_header *th = ic->ic_th;

		if (th->it_present & FUNC0(1<<IEEE80211_RADIOTAP_XCHANNEL))
			FUNC2(ic->ic_txchan, ic->ic_curchan);
		else if (th->it_present & FUNC0(1<<IEEE80211_RADIOTAP_CHANNEL))
			FUNC1(ic->ic_txchan, ic->ic_curchan);
	}
}