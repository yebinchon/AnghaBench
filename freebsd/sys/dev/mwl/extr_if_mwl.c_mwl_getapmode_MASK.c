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
struct ieee80211vap {int iv_flags_ht; int iv_flags; } ;
struct ieee80211_channel {int dummy; } ;
typedef  int /*<<< orphan*/  MWL_HAL_APMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AP_MODE_A_ONLY ; 
 int /*<<< orphan*/  AP_MODE_AandN ; 
 int /*<<< orphan*/  AP_MODE_B_ONLY ; 
 int /*<<< orphan*/  AP_MODE_BandGandN ; 
 int /*<<< orphan*/  AP_MODE_G_ONLY ; 
 int /*<<< orphan*/  AP_MODE_GandN ; 
 int /*<<< orphan*/  AP_MODE_MIXED ; 
 int /*<<< orphan*/  AP_MODE_N_ONLY ; 
 int IEEE80211_FHT_PUREN ; 
 int IEEE80211_F_PUREG ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC4 (struct ieee80211_channel*) ; 

__attribute__((used)) static MWL_HAL_APMODE
FUNC5(const struct ieee80211vap *vap, struct ieee80211_channel *chan)
{
	MWL_HAL_APMODE mode;

	if (FUNC4(chan)) {
		if (vap->iv_flags_ht & IEEE80211_FHT_PUREN)
			mode = AP_MODE_N_ONLY;
		else if (FUNC0(chan))
			mode = AP_MODE_AandN;
		else if (vap->iv_flags & IEEE80211_F_PUREG)
			mode = AP_MODE_GandN;
		else
			mode = AP_MODE_BandGandN;
	} else if (FUNC2(chan)) {
		if (vap->iv_flags & IEEE80211_F_PUREG)
			mode = AP_MODE_G_ONLY;
		else
			mode = AP_MODE_MIXED;
	} else if (FUNC3(chan))
		mode = AP_MODE_B_ONLY;
	else if (FUNC1(chan))
		mode = AP_MODE_A_ONLY;
	else
		mode = AP_MODE_MIXED;		/* XXX should not happen? */
	return mode;
}