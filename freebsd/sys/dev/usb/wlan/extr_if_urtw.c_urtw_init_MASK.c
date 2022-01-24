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
typedef  scalar_t__ usb_error_t ;
struct urtw_softc {int sc_flags; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/ * sc_xfer; scalar_t__ sc_txtimer; } ;

/* Variables and functions */
 size_t URTW_8187B_BULK_TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*) ; 
 int URTW_INIT_ONCE ; 
 int URTW_RTL8187B ; 
 int URTW_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urtw_softc*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC2 (struct urtw_softc*) ; 
 scalar_t__ FUNC3 (struct urtw_softc*) ; 
 int FUNC4 (struct urtw_softc*) ; 
 int FUNC5 (struct urtw_softc*) ; 
 scalar_t__ FUNC6 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct urtw_softc*) ; 
 scalar_t__ FUNC8 (struct urtw_softc*) ; 
 int /*<<< orphan*/  urtw_watchdog ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct urtw_softc *sc)
{
	usb_error_t error;
	int ret;

	FUNC0(sc);

	if (sc->sc_flags & URTW_RUNNING)
		FUNC7(sc);

	error = (sc->sc_flags & URTW_RTL8187B) ? FUNC3(sc) :
	    FUNC2(sc);
	if (error != 0)
		goto fail;

	/* reset softc variables  */
	sc->sc_txtimer = 0;

	if (!(sc->sc_flags & URTW_INIT_ONCE)) {
		ret = FUNC4(sc);
		if (ret != 0)
			goto fail;
		ret = FUNC5(sc);
		if (ret != 0)
			goto fail;
		sc->sc_flags |= URTW_INIT_ONCE;
	}

	error = FUNC6(sc);
	if (error != 0)
		goto fail;
	error = FUNC8(sc);
	if (error != 0)
		goto fail;

	if (sc->sc_flags & URTW_RTL8187B)
		FUNC9(sc->sc_xfer[URTW_8187B_BULK_TX_STATUS]);

	sc->sc_flags |= URTW_RUNNING;

	FUNC1(&sc->sc_watchdog_ch, hz, urtw_watchdog, sc);
fail:
	return;
}