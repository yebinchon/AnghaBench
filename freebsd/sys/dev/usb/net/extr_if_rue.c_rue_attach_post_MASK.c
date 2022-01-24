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
struct usb_ether {int /*<<< orphan*/  ue_eaddr; } ;
struct rue_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  RUE_EEPROM_IDR0 ; 
 int /*<<< orphan*/  FUNC0 (struct rue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rue_softc*) ; 
 struct rue_softc* FUNC2 (struct usb_ether*) ; 

__attribute__((used)) static void
FUNC3(struct usb_ether *ue)
{
	struct rue_softc *sc = FUNC2(ue);

	/* reset the adapter */
	FUNC1(sc);

	/* get station address from the EEPROM */
	FUNC0(sc, RUE_EEPROM_IDR0, ue->ue_eaddr, ETHER_ADDR_LEN);
}