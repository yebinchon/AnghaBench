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
struct upgt_softc {int sc_flags; int /*<<< orphan*/  sc_snd; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct upgt_softc* ic_softc; } ;

/* Variables and functions */
 int ENXIO ; 
 int UPGT_FLAG_INITDONE ; 
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct upgt_softc*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211com *ic, struct mbuf *m)   
{
	struct upgt_softc *sc = ic->ic_softc;
	int error;

	FUNC0(sc);
	if ((sc->sc_flags & UPGT_FLAG_INITDONE) == 0) {
		FUNC1(sc);
		return (ENXIO);
	}
	error = FUNC2(&sc->sc_snd, m);
	if (error) {
		FUNC1(sc);
		return (error);
	}
	FUNC3(sc);
	FUNC1(sc);

	return (0);
}