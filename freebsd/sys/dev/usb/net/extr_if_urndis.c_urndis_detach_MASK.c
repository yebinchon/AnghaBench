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
struct urndis_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; struct usb_ether sc_ue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urndis_softc*) ; 
 int /*<<< orphan*/  URNDIS_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (struct urndis_softc*) ; 
 struct urndis_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC5 (struct urndis_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct urndis_softc *sc = FUNC2(dev);
	struct usb_ether *ue = &sc->sc_ue;

	/* stop all USB transfers first */
	FUNC6(sc->sc_xfer, URNDIS_N_TRANSFER);

	FUNC4(ue);

	FUNC0(sc);
	(void)FUNC5(sc);
	FUNC1(sc);

	FUNC3(&sc->sc_mtx);

	return (0);
}