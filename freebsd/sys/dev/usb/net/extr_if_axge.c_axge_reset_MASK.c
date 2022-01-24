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
struct axge_softc {TYPE_1__ sc_ue; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct axge_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 struct usb_config_descriptor* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct axge_softc *sc)
{
	struct usb_config_descriptor *cd;
	usb_error_t err;

	cd = FUNC3(sc->sc_ue.ue_udev);

	err = FUNC4(sc->sc_ue.ue_udev, &sc->sc_mtx,
	    cd->bConfigurationValue);
	if (err)
		FUNC0("reset failed (ignored)\n");

	/* Wait a little while for the chip to get its brains in order. */
	FUNC2(&sc->sc_ue, hz / 100);

	/* Reinitialize controller to achieve full reset. */
	FUNC1(sc);
}