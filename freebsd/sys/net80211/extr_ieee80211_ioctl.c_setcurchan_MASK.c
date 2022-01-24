#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211vap {scalar_t__ iv_opmode; scalar_t__ iv_state; struct ieee80211_channel* iv_des_chan; TYPE_1__* iv_bss; int /*<<< orphan*/  iv_ifp; int /*<<< orphan*/  iv_des_mode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; void* ic_rt; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {struct ieee80211_channel* ni_chan; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel*) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  IEEE80211_S_SCAN ; 
 scalar_t__ IEEE80211_S_SLEEP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*,struct ieee80211_channel*) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211vap *vap, struct ieee80211_channel *c)
{
	struct ieee80211com *ic = vap->iv_ic;
	int error;

	if (c != IEEE80211_CHAN_ANYC) {
		if (FUNC2(c))
			return EBUSY;	/* XXX better code? */
		if (vap->iv_opmode == IEEE80211_M_HOSTAP) {
			if (FUNC1(c))
				return EINVAL;
			if (!FUNC5(c, vap->iv_des_mode))
				return EINVAL;
		} else if (vap->iv_opmode == IEEE80211_M_IBSS) {
			if (FUNC0(c))
				return EINVAL;
		}
		if ((vap->iv_state == IEEE80211_S_RUN || vap->iv_state == IEEE80211_S_SLEEP) &&
		    vap->iv_bss->ni_chan == c)
			return 0;	/* NB: nothing to do */
	}
	vap->iv_des_chan = c;

	error = 0;
	if (vap->iv_opmode == IEEE80211_M_MONITOR &&
	    vap->iv_des_chan != IEEE80211_CHAN_ANYC) {
		/*
		 * Monitor mode can switch directly.
		 */
		if (FUNC3(vap->iv_ifp)) {
			/* XXX need state machine for other vap's to follow */
			FUNC8(ic, vap->iv_des_chan);
			vap->iv_bss->ni_chan = ic->ic_curchan;
		} else {
			ic->ic_curchan = vap->iv_des_chan;
			ic->ic_rt = FUNC6(ic->ic_curchan);
		}
	} else {
		/*
		 * Need to go through the state machine in case we
		 * need to reassociate or the like.  The state machine
		 * will pickup the desired channel and avoid scanning.
		 */
		if (FUNC4(vap))
			FUNC7(vap, IEEE80211_S_SCAN, 0);
		else if (vap->iv_des_chan != IEEE80211_CHAN_ANYC) {
			/*
			 * When not up+running and a real channel has
			 * been specified fix the current channel so
			 * there is immediate feedback; e.g. via ifconfig.
			 */
			ic->ic_curchan = vap->iv_des_chan;
			ic->ic_rt = FUNC6(ic->ic_curchan);
		}
	}
	return error;
}