#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uhso_softc {int sc_ttys; int /*<<< orphan*/  sc_if_xfer; int /*<<< orphan*/  sc_mtx; TYPE_2__* sc_ifp; int /*<<< orphan*/  sc_c; TYPE_1__* sc_tty; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/  sc_ctrl_xfer; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  if_dunit; } ;
struct TYPE_5__ {int ht_muxport; int /*<<< orphan*/  ht_xfer; } ;

/* Variables and functions */
 int UHSO_CTRL_MAX ; 
 int UHSO_IFNET_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct uhso_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uhso_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct uhso_softc*) ; 
 int /*<<< orphan*/  uhso_ifnet_unit ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(device_t self)
{
	struct uhso_softc *sc = FUNC3(self);
	int i;

	FUNC12(sc->sc_xfer, 3);
	FUNC12(sc->sc_ctrl_xfer, UHSO_CTRL_MAX);
	if (sc->sc_ttys > 0) {
		FUNC9(&sc->sc_super_ucom, sc->sc_ucom);

		for (i = 0; i < sc->sc_ttys; i++) {
			if (sc->sc_tty[i].ht_muxport != -1) {
				FUNC12(sc->sc_tty[i].ht_xfer,
				    UHSO_CTRL_MAX);
			}
		}
	}

	if (sc->sc_ifp != NULL) {
		FUNC1(&sc->sc_c);
		FUNC4(uhso_ifnet_unit, sc->sc_ifp->if_dunit);
		FUNC7(&sc->sc_mtx);
		FUNC11(sc);
		FUNC0(sc->sc_ifp);
		FUNC5(sc->sc_ifp);
		FUNC6(sc->sc_ifp);
		FUNC8(&sc->sc_mtx);
		FUNC12(sc->sc_if_xfer, UHSO_IFNET_MAX);
	}

	FUNC2(self);

	FUNC10(sc);

	return (0);
}