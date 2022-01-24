#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct usb_config_descriptor {int /*<<< orphan*/  bConfigurationValue; } ;
struct TYPE_2__ {int /*<<< orphan*/  ue_udev; } ;
struct axe_softc {int sc_flags; TYPE_1__ sc_ue; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int AXE_FLAG_178 ; 
 int AXE_FLAG_772 ; 
 int AXE_FLAG_772A ; 
 int AXE_FLAG_772B ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct axe_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 struct usb_config_descriptor* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct axe_softc *sc)
{
	struct usb_config_descriptor *cd;
	usb_error_t err;

	cd = FUNC6(sc->sc_ue.ue_udev);

	err = FUNC7(sc->sc_ue.ue_udev, &sc->sc_mtx,
	    cd->bConfigurationValue);
	if (err)
		FUNC0("reset failed (ignored)\n");

	/* Wait a little while for the chip to get its brains in order. */
	FUNC5(&sc->sc_ue, hz / 100);

	/* Reinitialize controller to achieve full reset. */
	if (sc->sc_flags & AXE_FLAG_178)
		FUNC1(sc);
	else if (sc->sc_flags & AXE_FLAG_772)
		FUNC2(sc);
	else if (sc->sc_flags & AXE_FLAG_772A)
		FUNC3(sc);
	else if (sc->sc_flags & AXE_FLAG_772B)
		FUNC4(sc);
}