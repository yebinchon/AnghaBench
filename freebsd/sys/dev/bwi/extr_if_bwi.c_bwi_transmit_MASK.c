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
struct ieee80211com {struct bwi_softc* ic_softc; } ;
struct bwi_softc {int sc_flags; int /*<<< orphan*/  sc_snd; } ;

/* Variables and functions */
 int BWI_F_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211com *ic, struct mbuf *m)
{
	struct bwi_softc *sc = ic->ic_softc;
	int error;

	FUNC0(sc);
	if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
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