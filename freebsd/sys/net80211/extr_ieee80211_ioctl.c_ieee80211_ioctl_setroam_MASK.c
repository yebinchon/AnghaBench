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
struct ieee80211vap {scalar_t__ iv_roaming; struct ieee80211_roamparam* iv_roamparms; struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int /*<<< orphan*/  i_data; } ;
struct ieee80211_htrateset {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_modecaps; struct ieee80211_htrateset ic_sup_htrates; struct ieee80211_rateset* ic_sup_rates; } ;
struct ieee80211_roamparams_req {struct ieee80211_roamparam* params; } ;
struct ieee80211_roamparam {scalar_t__ rate; scalar_t__ rssi; } ;
struct ieee80211_rateset {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_roamparams_req*,int /*<<< orphan*/ ) ; 
 struct ieee80211_roamparams_req* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_MODE_11A ; 
 int IEEE80211_MODE_11NA ; 
 int IEEE80211_MODE_11NG ; 
 int IEEE80211_MODE_MAX ; 
 int IEEE80211_M_NOWAIT ; 
 int IEEE80211_M_ZERO ; 
 scalar_t__ IEEE80211_ROAMING_DEVICE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_htrateset const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rateset const*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ieee80211_roamparams_req*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211vap *vap,
        const struct ieee80211req *ireq)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_roamparams_req *parms;
	struct ieee80211_roamparam *src, *dst;
	const struct ieee80211_htrateset *rs_ht;
	const struct ieee80211_rateset *rs;
	int changed, error, mode, is11n, nmodes;

	if (ireq->i_len != sizeof(vap->iv_roamparms))
		return EINVAL;

	parms = FUNC1(sizeof(*parms), M_TEMP,
	    IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
	if (parms == NULL)
		return ENOMEM;

	error = FUNC4(ireq->i_data, parms, ireq->i_len);
	if (error != 0)
		goto fail;

	changed = 0;
	nmodes = IEEE80211_MODE_MAX;

	/* validate parameters and check if anything changed */
	for (mode = IEEE80211_MODE_11A; mode < nmodes; mode++) {
		if (FUNC5(ic->ic_modecaps, mode))
			continue;
		src = &parms->params[mode];
		dst = &vap->iv_roamparms[mode];
		rs = &ic->ic_sup_rates[mode];	/* NB: 11n maps to legacy */
		rs_ht = &ic->ic_sup_htrates;
		is11n = (mode == IEEE80211_MODE_11NA ||
			 mode == IEEE80211_MODE_11NG);
		/* XXX TODO: 11ac */
		if (src->rate != dst->rate) {
			if (!FUNC3(rs, src->rate) &&
			    (!is11n || !FUNC2(rs_ht, src->rate))) {
				error = EINVAL;
				goto fail;
			}
			changed++;
		}
		if (src->rssi != dst->rssi)
			changed++;
	}
	if (changed) {
		/*
		 * Copy new parameters in place and notify the
		 * driver so it can push state to the device.
		 */
		/* XXX locking? */
		for (mode = IEEE80211_MODE_11A; mode < nmodes; mode++) {
			if (FUNC6(ic->ic_modecaps, mode))
				vap->iv_roamparms[mode] = parms->params[mode];
		}

		if (vap->iv_roaming == IEEE80211_ROAMING_DEVICE)
			error = ERESTART;
	}

fail:	FUNC0(parms, M_TEMP);
	return error;
}