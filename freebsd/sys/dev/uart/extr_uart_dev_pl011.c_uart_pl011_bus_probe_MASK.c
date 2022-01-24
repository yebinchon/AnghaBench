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
struct uart_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_txfifosz; int /*<<< orphan*/  sc_rxfifosz; int /*<<< orphan*/  sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_RX_SIZE_R2 ; 
 int /*<<< orphan*/  FIFO_RX_SIZE_R3 ; 
 int /*<<< orphan*/  FIFO_TX_SIZE_R2 ; 
 int /*<<< orphan*/  FIFO_TX_SIZE_R3 ; 
 scalar_t__ IS_FDT ; 
 int /*<<< orphan*/  UART_PIDREG_2 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct uart_softc*) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc)
{
	int hwrev;

	hwrev = -1;
#ifdef FDT
	if (IS_FDT)
		hwrev = uart_pl011_bus_hwrev_fdt(sc);
#endif
	if (hwrev < 0)
		hwrev = FUNC0(&sc->sc_bas, UART_PIDREG_2) >> 4;

	if (hwrev <= 2) {
		sc->sc_rxfifosz = FIFO_RX_SIZE_R2;
		sc->sc_txfifosz = FIFO_TX_SIZE_R2;
	} else {
		sc->sc_rxfifosz = FIFO_RX_SIZE_R3;
		sc->sc_txfifosz = FIFO_TX_SIZE_R3;
	}

	FUNC1(sc->sc_dev, "PrimeCell UART (PL011)");

	return (0);
}