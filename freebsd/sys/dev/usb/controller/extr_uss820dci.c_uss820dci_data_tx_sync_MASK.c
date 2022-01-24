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
typedef  int uint8_t ;
struct uss820dci_td {scalar_t__ ep_index; int error; int /*<<< orphan*/  remainder; } ;
struct uss820dci_softc {int sc_dv_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  USS820_EPINDEX ; 
 int FUNC1 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_RXSTAT ; 
 int USS820_RXSTAT_EDOVW ; 
 int USS820_RXSTAT_RXSETUP ; 
 int USS820_RXSTAT_RXSOVW ; 
 int /*<<< orphan*/  USS820_TXFLG ; 
 int USS820_TXFLG_TXFIF0 ; 
 int USS820_TXFLG_TXFIF1 ; 
 int USS820_TXFLG_TXOVF ; 
 int USS820_TXFLG_TXURF ; 
 int /*<<< orphan*/  FUNC2 (struct uss820dci_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct uss820dci_softc*,int) ; 

__attribute__((used)) static uint8_t
FUNC4(struct uss820dci_softc *sc, struct uss820dci_td *td)
{
	uint8_t rx_stat;
	uint8_t tx_flag;

	/* select the correct endpoint */
	FUNC2(sc, USS820_EPINDEX, td->ep_index);

	/* read out TX FIFO flag */
	tx_flag = FUNC1(sc, USS820_TXFLG);

	if (td->ep_index == 0) {
		/* read out RX FIFO status last */
		rx_stat = FUNC1(sc, USS820_RXSTAT);

		FUNC0(5, "rx_stat=0x%02x rem=%u\n", rx_stat, td->remainder);

		if (rx_stat & (USS820_RXSTAT_RXSETUP |
		    USS820_RXSTAT_RXSOVW |
		    USS820_RXSTAT_EDOVW)) {
			FUNC0(5, "faking complete\n");
			/* Race condition */
			return (0);		/* complete */
		}
	}
	FUNC0(5, "tx_flag=0x%02x rem=%u\n", tx_flag, td->remainder);

	if (tx_flag & (USS820_TXFLG_TXOVF |
	    USS820_TXFLG_TXURF)) {
		td->error = 1;
		return (0);		/* complete */
	}
	if (tx_flag & (USS820_TXFLG_TXFIF0 |
	    USS820_TXFLG_TXFIF1)) {
		return (1);		/* not complete */
	}
	if (td->ep_index == 0 && sc->sc_dv_addr != 0xFF) {
		/* write function address */
		FUNC3(sc, sc->sc_dv_addr);
	}
	return (0);			/* complete */
}