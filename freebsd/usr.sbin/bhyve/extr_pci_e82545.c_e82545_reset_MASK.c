#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  octet; } ;
struct e82545_softc {int esc_LEDCTL; int esc_PBA; int eeprom_control; int esc_ITR; int esc_RXDCTL; scalar_t__ esc_TXDCTL; scalar_t__ esc_TDH; scalar_t__ esc_TDHr; scalar_t__ esc_TDT; scalar_t__ esc_TDLEN; scalar_t__ esc_TCTL; scalar_t__ esc_TXCW; int /*<<< orphan*/ * esc_txdesc; scalar_t__ esc_tdba; scalar_t__ esc_TADV; scalar_t__ esc_TIDV; scalar_t__ esc_AIT; scalar_t__ esc_TIPG; scalar_t__ esc_TDBAH; scalar_t__ esc_TDBAL; scalar_t__ esc_RXCSUM; scalar_t__ esc_RADV; scalar_t__ esc_RDTR; scalar_t__ esc_RDT; scalar_t__ esc_RDH; scalar_t__ esc_RDLEN; scalar_t__ esc_FCRTH; scalar_t__ esc_FCRTL; scalar_t__ esc_RCTL; scalar_t__ esc_RDBAH; scalar_t__ esc_RDBAL; TYPE_3__* esc_uni; TYPE_2__ esc_mac; TYPE_3__* esc_fmcast; TYPE_3__* esc_fvlan; scalar_t__ esc_IMC; scalar_t__ esc_IMS; scalar_t__ esc_ICS; scalar_t__ esc_ICR; int /*<<< orphan*/  nvm_bits; int /*<<< orphan*/  nvm_mode; scalar_t__ nvm_opaddr; scalar_t__ esc_FCTTV; scalar_t__ esc_VET; scalar_t__ esc_FCT; scalar_t__ esc_FCAH; scalar_t__ esc_FCAL; int /*<<< orphan*/  esc_pi; scalar_t__ esc_irq_asserted; } ;
struct TYPE_4__ {int /*<<< orphan*/  octet; } ;
struct TYPE_6__ {int eu_valid; TYPE_1__ eu_eth; } ;

/* Variables and functions */
 int E1000_EECD_PRES ; 
 int E82545_EECD_FWE_EN ; 
 int /*<<< orphan*/  E82545_NVM_MODE_OPADDR ; 
 int /*<<< orphan*/  E82545_NVM_OPADDR_BITS ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct e82545_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct e82545_softc *sc, int drvr)
{
	int i;

	FUNC1(sc);
	FUNC2(sc);

	/* clear outstanding interrupts */
	if (sc->esc_irq_asserted)
		FUNC5(sc->esc_pi);

	/* misc */
	if (!drvr) {
		sc->esc_FCAL = 0;
		sc->esc_FCAH = 0;
		sc->esc_FCT = 0;
		sc->esc_VET = 0;
		sc->esc_FCTTV = 0;
	}
	sc->esc_LEDCTL = 0x07061302;
	sc->esc_PBA = 0x00100030;
	
	/* start nvm in opcode mode. */
	sc->nvm_opaddr = 0;
	sc->nvm_mode = E82545_NVM_MODE_OPADDR;
	sc->nvm_bits = E82545_NVM_OPADDR_BITS;
	sc->eeprom_control = E1000_EECD_PRES | E82545_EECD_FWE_EN;
	FUNC0(sc);

	/* interrupt */
	sc->esc_ICR = 0;
	sc->esc_ITR = 250;
	sc->esc_ICS = 0;
	sc->esc_IMS = 0;
	sc->esc_IMC = 0;
		
	/* L2 filters */
	if (!drvr) {
		FUNC4(sc->esc_fvlan, 0, sizeof(sc->esc_fvlan));
		FUNC4(sc->esc_fmcast, 0, sizeof(sc->esc_fmcast));
		FUNC4(sc->esc_uni, 0, sizeof(sc->esc_uni));

		/* XXX not necessary on 82545 ?? */
		sc->esc_uni[0].eu_valid = 1;
		FUNC3(sc->esc_uni[0].eu_eth.octet, sc->esc_mac.octet,
		    ETHER_ADDR_LEN);
	} else {
		/* Clear RAH valid bits */
		for (i = 0; i < 16; i++)
			sc->esc_uni[i].eu_valid = 0;
	}
	
	/* receive */
	if (!drvr) {
		sc->esc_RDBAL = 0;
		sc->esc_RDBAH = 0;
	}
	sc->esc_RCTL = 0;
	sc->esc_FCRTL = 0;
	sc->esc_FCRTH = 0;
	sc->esc_RDLEN = 0;
	sc->esc_RDH = 0;
	sc->esc_RDT = 0;
	sc->esc_RDTR = 0;
	sc->esc_RXDCTL = (1 << 24) | (1 << 16); /* default GRAN/WTHRESH */
	sc->esc_RADV = 0;
	sc->esc_RXCSUM = 0;

	/* transmit */
	if (!drvr) {
		sc->esc_TDBAL = 0;
		sc->esc_TDBAH = 0;
		sc->esc_TIPG = 0;
		sc->esc_AIT = 0;
		sc->esc_TIDV = 0;
		sc->esc_TADV = 0;
	}
	sc->esc_tdba = 0;
	sc->esc_txdesc = NULL;
	sc->esc_TXCW = 0;
	sc->esc_TCTL = 0;
	sc->esc_TDLEN = 0;
	sc->esc_TDT = 0;
	sc->esc_TDHr = sc->esc_TDH = 0;
	sc->esc_TXDCTL = 0;
}