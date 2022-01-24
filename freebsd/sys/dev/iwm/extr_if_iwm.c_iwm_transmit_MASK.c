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
struct mbuf {int dummy; } ;
struct iwm_softc {int sc_flags; int /*<<< orphan*/  sc_snd; } ;
struct ieee80211com {struct iwm_softc* ic_softc; } ;

/* Variables and functions */
 int ENXIO ; 
 int IWM_FLAG_HW_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211com *ic, struct mbuf *m)
{
	struct iwm_softc *sc;
	int error;

	sc = ic->ic_softc;

	FUNC0(sc);
	if ((sc->sc_flags & IWM_FLAG_HW_INITED) == 0) {
		FUNC1(sc);
		return (ENXIO);
	}
	error = FUNC3(&sc->sc_snd, m);
	if (error) {
		FUNC1(sc);
		return (error);
	}
	FUNC2(sc);
	FUNC1(sc);
	return (0);
}