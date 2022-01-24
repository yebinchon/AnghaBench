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
struct usb_ether {int dummy; } ;
struct kue_softc {int /*<<< orphan*/  sc_mcfilters; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  KUE_N_TRANSFER ; 
 int /*<<< orphan*/  M_USBDEV ; 
 struct kue_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct kue_softc *sc = FUNC0(dev);
	struct usb_ether *ue = &sc->sc_ue;

	FUNC4(sc->sc_xfer, KUE_N_TRANSFER);
	FUNC3(ue);
	FUNC2(&sc->sc_mtx);
	FUNC1(sc->sc_mcfilters, M_USBDEV);

	return (0);
}