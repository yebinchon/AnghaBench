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
struct TYPE_2__ {int /*<<< orphan*/  arge_rx_tag; struct arge_rxdesc* arge_rxdesc; } ;
struct arge_softc {TYPE_1__ arge_cdata; } ;
struct arge_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int ARGE_RX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct arge_softc *sc)
{
	int i;
	struct arge_rxdesc	*rxd;

	FUNC0(sc);

	for (i = 0; i < ARGE_RX_RING_COUNT; i++) {
		rxd = &sc->arge_cdata.arge_rxdesc[i];
		/* Unmap the mbuf */
		if (rxd->rx_m != NULL) {
			FUNC1(sc->arge_cdata.arge_rx_tag,
			    rxd->rx_dmamap);
			FUNC2(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}
}