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
struct ieee80211com {int /*<<< orphan*/  ic_bsschan; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RT2573_MRR_CCK_FALLBACK ; 
 int RT2573_MRR_ENABLED ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR4 ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct rum_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	if (!FUNC0(ic->ic_bsschan)) {
		FUNC2(sc, RT2573_TXRX_CSR4,
		    RT2573_MRR_ENABLED | RT2573_MRR_CCK_FALLBACK);
	} else {
		FUNC1(sc, RT2573_TXRX_CSR4,
		    RT2573_MRR_ENABLED, RT2573_MRR_CCK_FALLBACK);
	}
}