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
struct cfumass_softc {int sc_ctl_initid; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  CFUMASS_T_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfumass_softc*,char*,int) ; 
 int /*<<< orphan*/  cfumass_port ; 
 int /*<<< orphan*/  cfumass_refcount ; 
 int /*<<< orphan*/  FUNC4 (struct cfumass_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct cfumass_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct cfumass_softc *sc;
	int error;

	sc = FUNC6(dev);

	FUNC0(sc, "go");

	FUNC1(sc);
	FUNC4(sc);
	FUNC2(sc);
	FUNC9(sc->sc_xfer, CFUMASS_T_MAX);

	if (sc->sc_ctl_initid != -1) {
		error = FUNC5(&cfumass_port, sc->sc_ctl_initid);
		if (error != 0) {
			FUNC3(sc, "ctl_remove_initiator() failed "
			    "with error %d", error);
		}
		sc->sc_ctl_initid = -1;
	}

	FUNC7(&sc->sc_mtx);
	FUNC8(&cfumass_refcount);

	return (0);
}