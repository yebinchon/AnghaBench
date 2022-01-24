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
struct ath_softc {int /*<<< orphan*/  sc_rx_statuslen; int /*<<< orphan*/  sc_rxbuf; int /*<<< orphan*/  sc_rxdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_RX_QUEUE_HP ; 
 int /*<<< orphan*/  HAL_RX_QUEUE_LP ; 
 int FUNC2 (struct ath_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath_rxbuf ; 

__attribute__((used)) static int
FUNC4(struct ath_softc *sc)
{
	int error;

	/*
	 * Create RX DMA tag and buffers.
	 */
	error = FUNC2(sc, &sc->sc_rxdma, &sc->sc_rxbuf,
	    "rx", ath_rxbuf, sc->sc_rx_statuslen);
	if (error != 0)
		return error;

	FUNC0(sc);
	(void) FUNC3(sc, HAL_RX_QUEUE_HP);
	(void) FUNC3(sc, HAL_RX_QUEUE_LP);
	FUNC1(sc);

	return (0);
}