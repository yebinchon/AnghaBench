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
struct muge_softc {int sc_phyno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct muge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct muge_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ether*) ; 
 struct muge_softc* FUNC4 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC5(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC4(ue);

	FUNC1(sc, "Calling muge_attach_post.\n");

	/* Setup some of the basics */
	sc->sc_phyno = 1;

	FUNC3(ue);
	FUNC2(ue);

	/* Initialise the chip for the first time */
	FUNC0(sc);
}