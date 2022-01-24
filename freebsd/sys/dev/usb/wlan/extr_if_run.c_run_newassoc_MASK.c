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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
struct run_softc {scalar_t__ ratectl_run; int /*<<< orphan*/  ratectl_ch; int /*<<< orphan*/  cmdq_task; TYPE_1__* cmdq; int /*<<< orphan*/  cmdq_store; int /*<<< orphan*/  sc_dev; } ;
struct run_node {size_t* ridx; size_t* ctl_ridx; scalar_t__ mgt_ridx; } ;
struct ieee80211vap {scalar_t__ iv_opmode; TYPE_2__* iv_txparms; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; struct run_softc* ic_softc; } ;
struct ieee80211_rateset {int rs_nrates; scalar_t__* rs_rates; } ;
struct ieee80211_node {scalar_t__ ni_associd; int /*<<< orphan*/  ni_macaddr; struct ieee80211vap* ni_vap; struct ieee80211_rateset ni_rates; } ;
struct TYPE_6__ {scalar_t__ rate; scalar_t__ phy; size_t ctl_ridx; } ;
struct TYPE_5__ {scalar_t__ mgmtrate; } ;
struct TYPE_4__ {scalar_t__ wcid; struct ieee80211_node* arg1; int /*<<< orphan*/ * arg0; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_STA ; 
 int IEEE80211_RATE_BASIC ; 
 scalar_t__ IEEE80211_RATE_VAL ; 
 scalar_t__ RT2860_RIDX_MAX ; 
 scalar_t__ RT2870_WCID_MAX ; 
 int FUNC0 (scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int RUN_DEBUG_RATE ; 
 int RUN_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*) ; 
 struct run_node* FUNC4 (struct ieee80211_node*) ; 
 scalar_t__ RUN_RATECTL_OFF ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 TYPE_3__* rt2860_rates ; 
 int /*<<< orphan*/  run_newassoc_cb ; 
 int /*<<< orphan*/  run_ratectl_to ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct run_softc*) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211_node *ni, int isnew)
{
	struct run_node *rn = FUNC4(ni);
	struct ieee80211_rateset *rs = &ni->ni_rates;
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211com *ic = vap->iv_ic;
	struct run_softc *sc = ic->ic_softc;
	uint8_t rate;
	uint8_t ridx;
	uint8_t wcid;
	int i, j;

	wcid = (vap->iv_opmode == IEEE80211_M_STA) ?
	    1 : FUNC0(ni->ni_associd);

	if (wcid > RT2870_WCID_MAX) {
		FUNC6(sc->sc_dev, "wcid=%d out of range\n", wcid);
		return;
	}

	/* only interested in true associations */
	if (isnew && ni->ni_associd != 0) {

		/*
		 * This function could is called though timeout function.
		 * Need to defer.
		 */
		uint32_t cnt = FUNC1(&sc->cmdq_store);
		FUNC2(sc, RUN_DEBUG_STATE, "cmdq_store=%d\n", cnt);
		sc->cmdq[cnt].func = run_newassoc_cb;
		sc->cmdq[cnt].arg0 = NULL;
		sc->cmdq[cnt].arg1 = ni;
		sc->cmdq[cnt].wcid = wcid;
		FUNC9(ic, &sc->cmdq_task);
	}

	FUNC2(sc, RUN_DEBUG_STATE,
	    "new assoc isnew=%d associd=%x addr=%s\n",
	    isnew, ni->ni_associd, FUNC7(ni->ni_macaddr));

	for (i = 0; i < rs->rs_nrates; i++) {
		rate = rs->rs_rates[i] & IEEE80211_RATE_VAL;
		/* convert 802.11 rate to hardware rate index */
		for (ridx = 0; ridx < RT2860_RIDX_MAX; ridx++)
			if (rt2860_rates[ridx].rate == rate)
				break;
		rn->ridx[i] = ridx;
		/* determine rate of control response frames */
		for (j = i; j >= 0; j--) {
			if ((rs->rs_rates[j] & IEEE80211_RATE_BASIC) &&
			    rt2860_rates[rn->ridx[i]].phy ==
			    rt2860_rates[rn->ridx[j]].phy)
				break;
		}
		if (j >= 0) {
			rn->ctl_ridx[i] = rn->ridx[j];
		} else {
			/* no basic rate found, use mandatory one */
			rn->ctl_ridx[i] = rt2860_rates[ridx].ctl_ridx;
		}
		FUNC2(sc, RUN_DEBUG_STATE | RUN_DEBUG_RATE,
		    "rate=0x%02x ridx=%d ctl_ridx=%d\n",
		    rs->rs_rates[i], rn->ridx[i], rn->ctl_ridx[i]);
	}
	rate = vap->iv_txparms[FUNC8(ic->ic_curchan)].mgmtrate;
	for (ridx = 0; ridx < RT2860_RIDX_MAX; ridx++)
		if (rt2860_rates[ridx].rate == rate)
			break;
	rn->mgt_ridx = ridx;
	FUNC2(sc, RUN_DEBUG_STATE | RUN_DEBUG_RATE,
	    "rate=%d, mgmt_ridx=%d\n", rate, rn->mgt_ridx);

	FUNC3(sc);
	if(sc->ratectl_run != RUN_RATECTL_OFF)
		FUNC10(&sc->ratectl_ch, hz, run_ratectl_to, sc);
	FUNC5(sc);
}