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
struct lance_softc {int /*<<< orphan*/  (* sc_start_locked ) (struct lance_softc*) ;scalar_t__ sc_mediachange; } ;
struct ifnet {int /*<<< orphan*/  if_snd; struct lance_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct lance_softc*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct lance_softc *sc = ifp->if_softc;

	if (sc->sc_mediachange) {
		/*
		 * For setting the port in LE_CSR15 the PCnet chips must
		 * be powered down or stopped and unlike documented may
		 * not take effect without an initialization. So don't
		 * invoke (*sc_mediachange) directly here but go through
		 * lance_init_locked().
		 */
		FUNC1(sc);
		FUNC4(sc);
		FUNC3(sc);
		if (!FUNC0(&ifp->if_snd))
			(*sc->sc_start_locked)(sc);
		FUNC2(sc);
	}
	return (0);
}