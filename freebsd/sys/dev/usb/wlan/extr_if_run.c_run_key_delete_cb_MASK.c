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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct run_softc {int dummy; } ;
struct ieee80211_key {int wk_flags; int wk_keyix; scalar_t__ wk_pad; } ;
struct run_cmdq {struct ieee80211_key key; struct run_softc* arg1; } ;

/* Variables and functions */
 int IEEE80211_KEY_GROUP ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  RT2860_SKEY_MODE_0_7 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RUN_DEBUG_KEY ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct run_cmdq *cmdq = arg;
	struct run_softc *sc = cmdq->arg1;
	struct ieee80211_key *k = &cmdq->key;
	uint32_t attr;
	uint8_t wcid;

	FUNC3(sc, MA_OWNED);

	if (k->wk_flags & IEEE80211_KEY_GROUP) {
		/* remove group key */
		FUNC2(sc, RUN_DEBUG_KEY, "removing group key\n");
		FUNC4(sc, RT2860_SKEY_MODE_0_7, &attr);
		attr &= ~(0xf << (k->wk_keyix * 4));
		FUNC6(sc, RT2860_SKEY_MODE_0_7, attr);
	} else {
		/* remove pairwise key */
		FUNC2(sc, RUN_DEBUG_KEY,
		    "removing key for wcid %x\n", k->wk_pad);
		/* matching wcid was written to wk_pad in run_key_set() */
		wcid = k->wk_pad;
		FUNC4(sc, FUNC0(wcid), &attr);
		attr &= ~0xf;
		FUNC6(sc, FUNC0(wcid), attr);
		FUNC5(sc, FUNC1(wcid), 0, 8);
	}

	k->wk_pad = 0;
}