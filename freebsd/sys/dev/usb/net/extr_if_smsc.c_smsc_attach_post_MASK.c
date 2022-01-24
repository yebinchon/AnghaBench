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
typedef  void* uint8_t ;
typedef  int uint32_t ;
struct usb_ether {int dummy; } ;
struct TYPE_2__ {int* ue_eaddr; int /*<<< orphan*/  ue_dev; } ;
struct smsc_softc {int sc_phyno; TYPE_1__ sc_ue; } ;
typedef  scalar_t__ mac_l ;
typedef  scalar_t__ mac_h ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  SMSC_MAC_ADDRH ; 
 int /*<<< orphan*/  SMSC_MAC_ADDRL ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc_softc*,char*) ; 
 int FUNC5 (struct smsc_softc*,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct smsc_softc*,int /*<<< orphan*/ ,int*) ; 
 struct smsc_softc* FUNC7 (struct usb_ether*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(struct usb_ether *ue)
{
	struct smsc_softc *sc = FUNC7(ue);
	uint32_t mac_h, mac_l;
	int err;

	FUNC4(sc, "smsc_attach_post\n");

	/* Setup some of the basics */
	sc->sc_phyno = 1;


	/* Attempt to get the mac address, if an EEPROM is not attached this
	 * will just return FF:FF:FF:FF:FF:FF, so in such cases we invent a MAC
	 * address based on urandom.
	 */
	FUNC1(sc->sc_ue.ue_eaddr, 0xff, ETHER_ADDR_LEN);
	
	/* Check if there is already a MAC address in the register */
	if ((FUNC6(sc, SMSC_MAC_ADDRL, &mac_l) == 0) &&
	    (FUNC6(sc, SMSC_MAC_ADDRH, &mac_h) == 0)) {
		sc->sc_ue.ue_eaddr[5] = (uint8_t)((mac_h >> 8) & 0xff);
		sc->sc_ue.ue_eaddr[4] = (uint8_t)((mac_h) & 0xff);
		sc->sc_ue.ue_eaddr[3] = (uint8_t)((mac_l >> 24) & 0xff);
		sc->sc_ue.ue_eaddr[2] = (uint8_t)((mac_l >> 16) & 0xff);
		sc->sc_ue.ue_eaddr[1] = (uint8_t)((mac_l >> 8) & 0xff);
		sc->sc_ue.ue_eaddr[0] = (uint8_t)((mac_l) & 0xff);
	}
	
	/* MAC address is not set so try to read from EEPROM, if that fails generate
	 * a random MAC address.
	 */
	if (!FUNC0(sc->sc_ue.ue_eaddr)) {

		err = FUNC5(sc, 0x01, sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN);
#ifdef FDT
		if ((err != 0) || (!ETHER_IS_VALID(sc->sc_ue.ue_eaddr)))
			err = usb_fdt_get_mac_addr(sc->sc_ue.ue_dev, &sc->sc_ue);
#endif
		if ((err != 0) || (!FUNC0(sc->sc_ue.ue_eaddr))) {
			FUNC2(sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN);
			sc->sc_ue.ue_eaddr[0] &= ~0x01;     /* unicast */
			sc->sc_ue.ue_eaddr[0] |=  0x02;     /* locally administered */
		}
	}
	
	/* Initialise the chip for the first time */
	FUNC3(sc);
}