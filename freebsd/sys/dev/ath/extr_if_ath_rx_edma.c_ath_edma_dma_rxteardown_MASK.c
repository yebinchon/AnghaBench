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
struct TYPE_2__ {scalar_t__ dd_desc_len; } ;
struct ath_softc {int /*<<< orphan*/  sc_rxbuf; TYPE_1__ sc_rxdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_RX_QUEUE_HP ; 
 int /*<<< orphan*/  HAL_RX_QUEUE_LP ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ath_softc *sc)
{

	FUNC0(sc);
	FUNC3(sc);
	FUNC4(sc, HAL_RX_QUEUE_HP);
	FUNC5(sc, HAL_RX_QUEUE_HP);

	FUNC4(sc, HAL_RX_QUEUE_LP);
	FUNC5(sc, HAL_RX_QUEUE_LP);
	FUNC1(sc);

	/* Free RX ath_buf */
	/* Free RX DMA tag */
	if (sc->sc_rxdma.dd_desc_len != 0)
		FUNC2(sc, &sc->sc_rxdma, &sc->sc_rxbuf);

	return (0);
}