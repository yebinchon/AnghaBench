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
typedef  size_t uint8_t ;
struct usie_softc {scalar_t__ sc_nucom; int /*<<< orphan*/ * sc_uc_xfer; int /*<<< orphan*/  sc_if_xfer; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_super_ucom; int /*<<< orphan*/ * sc_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  USIE_IF_N_XFER ; 
 size_t USIE_UCOM_MAX ; 
 int /*<<< orphan*/  USIE_UC_N_XFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usie_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usie_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct usie_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t self)
{
	struct usie_softc *sc = FUNC2(self);
	uint8_t x;

	/* detach ifnet */
	if (sc->sc_ifp != NULL) {
		FUNC8(sc);
		FUNC6(sc->sc_if_xfer, USIE_IF_N_XFER);
		FUNC0(sc->sc_ifp);
		FUNC3(sc->sc_ifp);
		FUNC4(sc->sc_ifp);
		sc->sc_ifp = NULL;
	}
	/* detach ucom */
	if (sc->sc_nucom > 0)
		FUNC5(&sc->sc_super_ucom, sc->sc_ucom);

	/* stop all USB transfers */
	FUNC6(sc->sc_if_xfer, USIE_IF_N_XFER);

	for (x = 0; x != USIE_UCOM_MAX; x++)
		FUNC6(sc->sc_uc_xfer[x], USIE_UC_N_XFER);


	FUNC1(self);

	FUNC7(sc);

	return (0);
}