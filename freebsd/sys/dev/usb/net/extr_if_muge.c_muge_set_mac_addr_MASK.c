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
typedef  void* uint8_t ;
typedef  int uint32_t ;
struct usb_ether {int* ue_eaddr; int /*<<< orphan*/  ue_dev; } ;
struct muge_softc {int dummy; } ;
typedef  scalar_t__ mac_l ;
typedef  scalar_t__ mac_h ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  ETH_E2P_MAC_OFFSET ; 
 int /*<<< orphan*/  ETH_RX_ADDRH ; 
 int /*<<< orphan*/  ETH_RX_ADDRL ; 
 int /*<<< orphan*/  OTP_MAC_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct muge_softc*) ; 
 scalar_t__ FUNC3 (struct muge_softc*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct muge_softc*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct muge_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct muge_softc*,char*) ; 
 struct muge_softc* FUNC8 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct usb_ether*) ; 

__attribute__((used)) static void
FUNC10(struct usb_ether *ue)
{
	struct muge_softc *sc = FUNC8(ue);
	uint32_t mac_h, mac_l;

	FUNC6(ue->ue_eaddr, 0xff, ETHER_ADDR_LEN);

	uint32_t val;
	FUNC5(sc, 0, &val);

	/* Read current MAC address from RX_ADDRx registers. */
	if ((FUNC5(sc, ETH_RX_ADDRL, &mac_l) == 0) &&
	    (FUNC5(sc, ETH_RX_ADDRH, &mac_h) == 0)) {
		ue->ue_eaddr[5] = (uint8_t)((mac_h >> 8) & 0xff);
		ue->ue_eaddr[4] = (uint8_t)((mac_h) & 0xff);
		ue->ue_eaddr[3] = (uint8_t)((mac_l >> 24) & 0xff);
		ue->ue_eaddr[2] = (uint8_t)((mac_l >> 16) & 0xff);
		ue->ue_eaddr[1] = (uint8_t)((mac_l >> 8) & 0xff);
		ue->ue_eaddr[0] = (uint8_t)((mac_l) & 0xff);
	}

	/*
	 * If RX_ADDRx did not provide a valid MAC address, try EEPROM.  If that
	 * doesn't work, try OTP.  Whether any of these methods work or not, try
	 * FDT data, because it is allowed to override the EEPROM/OTP values.
	 */
	if (FUNC0(ue->ue_eaddr)) {
		FUNC7(sc, "MAC assigned from registers\n");
	} else if (FUNC2(sc) && FUNC3(sc,
	    ETH_E2P_MAC_OFFSET, ue->ue_eaddr, ETHER_ADDR_LEN) == 0 &&
	    FUNC0(ue->ue_eaddr)) {
		FUNC7(sc, "MAC assigned from EEPROM\n");
	} else if (FUNC4(sc, OTP_MAC_OFFSET, ue->ue_eaddr,
	    ETHER_ADDR_LEN) == 0 && FUNC0(ue->ue_eaddr)) {
		FUNC7(sc, "MAC assigned from OTP\n");
	}

#ifdef FDT
	/* ue->ue_eaddr modified only if config exists for this dev instance. */
	usb_fdt_get_mac_addr(ue->ue_dev, ue);
	if (ETHER_IS_VALID(ue->ue_eaddr)) {
		muge_dbg_printf(sc, "MAC assigned from FDT data\n");
	}
#endif

	if (!FUNC0(ue->ue_eaddr)) {
		FUNC7(sc, "MAC assigned randomly\n");
		FUNC1(ue->ue_eaddr, ETHER_ADDR_LEN, 0);
		ue->ue_eaddr[0] &= ~0x01;	/* unicast */
		ue->ue_eaddr[0] |= 0x02;	/* locally administered */
	}
}