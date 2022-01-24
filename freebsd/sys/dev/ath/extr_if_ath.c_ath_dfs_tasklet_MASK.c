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
struct ieee80211com {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  sc_curchan; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 scalar_t__ FUNC2 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *p, int npending)
{
	struct ath_softc *sc = (struct ath_softc *) p;
	struct ieee80211com *ic = &sc->sc_ic;

	/*
	 * If previous processing has found a radar event,
	 * signal this to the net80211 layer to begin DFS
	 * processing.
	 */
	if (FUNC2(sc, sc->sc_curchan)) {
		/* DFS event found, initiate channel change */

		/*
		 * XXX TODO: immediately disable ACK processing
		 * on the current channel.  This would be done
		 * by setting AR_DIAG_ACK_DIS (AR5212; may be
		 * different for others) until we are out of
		 * CAC.
		 */

		/*
		 * XXX doesn't currently tell us whether the event
		 * XXX was found in the primary or extension
		 * XXX channel!
		 */
		FUNC0(ic);
		FUNC3(ic, sc->sc_curchan);
		FUNC1(ic);
	}
}