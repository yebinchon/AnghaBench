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
struct axe_softc {struct usb_ether sc_ue; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXE_CMD_RXCTL_WRITE ; 
 int /*<<< orphan*/  AXE_GPIO_RELOAD_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct axe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct axe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int hz ; 

__attribute__((used)) static void
FUNC3(struct axe_softc *sc)
{
	struct usb_ether *ue;

	ue = &sc->sc_ue;
	/* Reload EEPROM. */
	FUNC0(AXE_GPIO_RELOAD_EEPROM, hz / 32);
	FUNC1(sc);
	/* Stop MAC. */
	FUNC2(sc, AXE_CMD_RXCTL_WRITE, 0, 0, NULL);
}