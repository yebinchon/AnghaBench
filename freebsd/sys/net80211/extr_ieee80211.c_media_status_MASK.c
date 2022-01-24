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
struct ieee80211_channel {int dummy; } ;
typedef  enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC5 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC6 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC7 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC8 (struct ieee80211_channel const*) ; 
#define  IEEE80211_M_AHDEMO 134 
#define  IEEE80211_M_HOSTAP 133 
#define  IEEE80211_M_IBSS 132 
#define  IEEE80211_M_MBSS 131 
#define  IEEE80211_M_MONITOR 130 
#define  IEEE80211_M_STA 129 
#define  IEEE80211_M_WDS 128 
 int IFM_FLAG0 ; 
 int IFM_IEEE80211 ; 
 int IFM_IEEE80211_11A ; 
 int IFM_IEEE80211_11B ; 
 int IFM_IEEE80211_11G ; 
 int IFM_IEEE80211_11NA ; 
 int IFM_IEEE80211_11NG ; 
 int IFM_IEEE80211_ADHOC ; 
 int IFM_IEEE80211_FH ; 
 int IFM_IEEE80211_HOSTAP ; 
 int IFM_IEEE80211_HT20 ; 
 int IFM_IEEE80211_HT40 ; 
 int IFM_IEEE80211_MBSS ; 
 int IFM_IEEE80211_MONITOR ; 
 int IFM_IEEE80211_TURBO ; 
 int IFM_IEEE80211_WDS ; 

__attribute__((used)) static int
FUNC9(enum ieee80211_opmode opmode, const struct ieee80211_channel *chan)
{
	int status;

	status = IFM_IEEE80211;
	switch (opmode) {
	case IEEE80211_M_STA:
		break;
	case IEEE80211_M_IBSS:
		status |= IFM_IEEE80211_ADHOC;
		break;
	case IEEE80211_M_HOSTAP:
		status |= IFM_IEEE80211_HOSTAP;
		break;
	case IEEE80211_M_MONITOR:
		status |= IFM_IEEE80211_MONITOR;
		break;
	case IEEE80211_M_AHDEMO:
		status |= IFM_IEEE80211_ADHOC | IFM_FLAG0;
		break;
	case IEEE80211_M_WDS:
		status |= IFM_IEEE80211_WDS;
		break;
	case IEEE80211_M_MBSS:
		status |= IFM_IEEE80211_MBSS;
		break;
	}
	if (FUNC6(chan)) {
		status |= IFM_IEEE80211_11NA;
	} else if (FUNC7(chan)) {
		status |= IFM_IEEE80211_11NG;
	} else if (FUNC0(chan)) {
		status |= IFM_IEEE80211_11A;
	} else if (FUNC2(chan)) {
		status |= IFM_IEEE80211_11B;
	} else if (FUNC1(chan)) {
		status |= IFM_IEEE80211_11G;
	} else if (FUNC3(chan)) {
		status |= IFM_IEEE80211_FH;
	}
	/* XXX else complain? */

	if (FUNC8(chan))
		status |= IFM_IEEE80211_TURBO;
#if 0
	if (IEEE80211_IS_CHAN_HT20(chan))
		status |= IFM_IEEE80211_HT20;
	if (IEEE80211_IS_CHAN_HT40(chan))
		status |= IFM_IEEE80211_HT40;
#endif
	return status;
}