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
typedef  scalar_t__ uint8_t ;
struct uss820dci_softc {int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 scalar_t__ UE_CONTROL ; 
 scalar_t__ UE_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USS820_EPCON ; 
 int USS820_EPCON_RXIE ; 
 int USS820_EPCON_RXSTL ; 
 int USS820_EPCON_TXOE ; 
 int USS820_EPCON_TXSTL ; 
 int /*<<< orphan*/  USS820_EPINDEX ; 
 scalar_t__ FUNC2 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_RXCON ; 
 scalar_t__ USS820_RXCON_RXCLR ; 
 scalar_t__ USS820_RXCON_RXFFRC ; 
 int /*<<< orphan*/  USS820_RXSTAT ; 
 int /*<<< orphan*/  USS820_RXSTAT_RXSOVW ; 
 int /*<<< orphan*/  USS820_TXCON ; 
 scalar_t__ USS820_TXCON_TXCLR ; 
 int /*<<< orphan*/  USS820_TXSTAT ; 
 scalar_t__ USS820_TXSTAT_TXSOVW ; 
 int /*<<< orphan*/  FUNC3 (struct uss820dci_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct uss820dci_softc*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct uss820dci_softc *sc,
    uint8_t ep_no, uint8_t ep_type, uint8_t ep_dir)
{
	uint8_t temp;

	if (ep_type == UE_CONTROL) {
		/* clearing stall is not needed */
		return;
	}
	FUNC0(&sc->sc_bus);

	/* select endpoint index */
	FUNC3(sc, USS820_EPINDEX, ep_no);

	/* clear stall and disable I/O transfers */
	if (ep_dir == UE_DIR_IN) {
		temp = 0xFF ^ (USS820_EPCON_TXOE |
		    USS820_EPCON_TXSTL);
	} else {
		temp = 0xFF ^ (USS820_EPCON_RXIE |
		    USS820_EPCON_RXSTL);
	}
	FUNC4(sc, USS820_EPCON, temp, 0);

	if (ep_dir == UE_DIR_IN) {
		/* reset data toggle */
		FUNC3(sc, USS820_TXSTAT,
		    USS820_TXSTAT_TXSOVW);

		/* reset FIFO */
		temp = FUNC2(sc, USS820_TXCON);
		temp |= USS820_TXCON_TXCLR;
		FUNC3(sc, USS820_TXCON, temp);
		temp &= ~USS820_TXCON_TXCLR;
		FUNC3(sc, USS820_TXCON, temp);
	} else {

		/* reset data toggle */
		FUNC4(sc, USS820_RXSTAT,
		    0, USS820_RXSTAT_RXSOVW);

		/* reset FIFO */
		temp = FUNC2(sc, USS820_RXCON);
		temp |= USS820_RXCON_RXCLR;
		temp &= ~USS820_RXCON_RXFFRC;
		FUNC3(sc, USS820_RXCON, temp);
		temp &= ~USS820_RXCON_RXCLR;
		FUNC3(sc, USS820_RXCON, temp);
	}
	FUNC1(&sc->sc_bus);
}