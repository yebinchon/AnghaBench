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
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211vap {size_t iv_state; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; int ic_csa_count; int ic_csa_mode; int /*<<< orphan*/  ic_csa_newchan; TYPE_1__* ic_bsschan; } ;
struct ieee80211_frame {int dummy; } ;
struct ieee80211_csa_ie {int csa_mode; int csa_count; int /*<<< orphan*/  csa_newchan; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int ic_flags; } ;

/* Variables and functions */
 int IEEE80211_CHAN_ALL ; 
 int IEEE80211_CHAN_ALLTURBO ; 
 int IEEE80211_CSA_COUNT_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int,struct ieee80211_frame const*,char*,char*,int,...) ; 
 int IEEE80211_F_CSAPENDING ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int IEEE80211_MSG_DOTH ; 
 int IEEE80211_MSG_ELEMID ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int,struct ieee80211_frame const*,char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 size_t IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*,struct ieee80211_channel*,int,int) ; 
 struct ieee80211_channel* FUNC9 (struct ieee80211com*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ieee80211_state_name ; 

__attribute__((used)) static void
FUNC10(struct ieee80211vap *vap, uint8_t *frm,
	const struct ieee80211_frame *wh)
{
	struct ieee80211com *ic = vap->iv_ic;
	const struct ieee80211_csa_ie *csa =
	    (const struct ieee80211_csa_ie *) frm;

	FUNC4(vap->iv_state >= IEEE80211_S_RUN,
	    ("state %s", ieee80211_state_name[vap->iv_state]));

	if (csa->csa_mode > 1) {
		FUNC0(vap,
		    IEEE80211_MSG_ELEMID | IEEE80211_MSG_DOTH,
		    wh, "CSA", "invalid mode %u", csa->csa_mode);
		return;
	}
	FUNC1(ic);
	if ((ic->ic_flags & IEEE80211_F_CSAPENDING) == 0) {
		/*
		 * Convert the channel number to a channel reference.  We
		 * try first to preserve turbo attribute of the current
		 * channel then fallback.  Note this will not work if the
		 * CSA specifies a channel that requires a band switch (e.g.
		 * 11a => 11g).  This is intentional as 11h is defined only
		 * for 5GHz/11a and because the switch does not involve a
		 * reassociation, protocol state (capabilities, negotated
		 * rates, etc) may/will be wrong.
		 */
		struct ieee80211_channel *c =
		    FUNC9(ic, csa->csa_newchan,
			(ic->ic_bsschan->ic_flags & IEEE80211_CHAN_ALLTURBO));
		if (c == NULL) {
			c = FUNC9(ic,
			    csa->csa_newchan,
			    (ic->ic_bsschan->ic_flags & IEEE80211_CHAN_ALL));
			if (c == NULL) {
				FUNC0(vap,
				    IEEE80211_MSG_ELEMID | IEEE80211_MSG_DOTH,
				    wh, "CSA", "invalid channel %u",
				    csa->csa_newchan);
				goto done;
			}
		}
#if IEEE80211_CSA_COUNT_MIN > 0
		if (csa->csa_count < IEEE80211_CSA_COUNT_MIN) {
			/*
			 * Require at least IEEE80211_CSA_COUNT_MIN count to
			 * reduce the risk of being redirected by a fabricated
			 * CSA.  If a valid CSA is dropped we'll still get a
			 * beacon miss when the AP leaves the channel so we'll
			 * eventually follow to the new channel.
			 *
			 * NOTE: this violates the 11h spec that states that
			 * count may be any value and if 0 then a switch
			 * should happen asap.
			 */
			IEEE80211_DISCARD_IE(vap,
			    IEEE80211_MSG_ELEMID | IEEE80211_MSG_DOTH,
			    wh, "CSA", "count %u too small, must be >= %u",
			    csa->csa_count, IEEE80211_CSA_COUNT_MIN);
			goto done;
		}
#endif
		FUNC8(ic, c, csa->csa_mode, csa->csa_count);
	} else {
		/*
		 * Validate this ie against the initial CSA.  We require
		 * mode and channel not change and the count must be
		 * monotonically decreasing.  This may be pointless and
		 * canceling the switch as a result may be too paranoid but
		 * in the worst case if we drop out of CSA because of this
		 * and the AP does move then we'll just end up taking a
		 * beacon miss and scan to find the AP.
		 *
		 * XXX may want <= on count as we also process ProbeResp
		 * frames and those may come in w/ the same count as the
		 * previous beacon; but doing so leaves us open to a stuck
		 * count until we add a dead-man timer
		 */
		if (!(csa->csa_count < ic->ic_csa_count &&
		      csa->csa_mode == ic->ic_csa_mode &&
		      csa->csa_newchan == FUNC5(ic, ic->ic_csa_newchan))) {
			FUNC2(vap, IEEE80211_MSG_DOTH, wh,
			    "CSA ie mismatch, initial ie <%d,%d,%d>, "
			    "this ie <%d,%d,%d>", ic->ic_csa_mode,
			    ic->ic_csa_newchan, ic->ic_csa_count,
			    csa->csa_mode, csa->csa_newchan, csa->csa_count);
			FUNC6(ic);
		} else {
			if (csa->csa_count <= 1)
				FUNC7(ic);
			else
				ic->ic_csa_count = csa->csa_count;
		}
	}
done:
	FUNC3(ic);
}