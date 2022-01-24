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
struct rsu_softc {int /*<<< orphan*/  del_key_task; int /*<<< orphan*/  free_keys_bmap; int /*<<< orphan*/  sc_running; struct ieee80211_key const** group_keys; } ;
struct ieee80211vap {struct ieee80211_key const* iv_nw_keys; TYPE_1__* iv_ic; } ;
struct ieee80211_key {int wk_flags; size_t wk_keyix; } ;
struct TYPE_2__ {struct rsu_softc* ic_softc; } ;

/* Variables and functions */
 int IEEE80211_KEY_SWCRYPT ; 
 size_t IEEE80211_WEP_NKID ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsu_softc*) ; 
 size_t FUNC5 (struct ieee80211_key const**) ; 
 int FUNC6 (struct rsu_softc*,size_t) ; 
 int FUNC7 (struct rsu_softc*,struct ieee80211_key const*) ; 
 int FUNC8 (struct rsu_softc*,struct ieee80211_key const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC12(struct ieee80211vap *vap, const struct ieee80211_key *k,
    int set)
{
	struct rsu_softc *sc = vap->iv_ic->ic_softc;
	int ret;

	if (k->wk_flags & IEEE80211_KEY_SWCRYPT) {
		/* Not for us. */
		return (1);
	}

	/* Handle group keys. */
	if (&vap->iv_nw_keys[0] <= k &&
	    k < &vap->iv_nw_keys[IEEE80211_WEP_NKID]) {
		FUNC0(k->wk_keyix < FUNC5(sc->group_keys),
		    ("keyix %u > %zu\n", k->wk_keyix, FUNC5(sc->group_keys)));

		FUNC3(sc);
		sc->group_keys[k->wk_keyix] = (set ? k : NULL);
		if (!sc->sc_running) {
			/* Static keys will be set during device startup. */
			FUNC4(sc);
			return (1);
		}

		if (set)
			ret = FUNC7(sc, k);
		else
			ret = FUNC6(sc, k->wk_keyix);
		FUNC4(sc);

		return (!ret);
	}

	if (set) {
		/* wait for pending key removal */
		FUNC10(taskqueue_thread, &sc->del_key_task);

		FUNC3(sc);
		ret = FUNC8(sc, k);
		FUNC4(sc);
	} else {
		FUNC1(sc);
		FUNC9(sc->free_keys_bmap, k->wk_keyix);
		FUNC2(sc);

		/* workaround ieee80211_node_delucastkey() locking */
		FUNC11(taskqueue_thread, &sc->del_key_task);
		ret = 0;	/* fake success */
	}

	return (!ret);
}