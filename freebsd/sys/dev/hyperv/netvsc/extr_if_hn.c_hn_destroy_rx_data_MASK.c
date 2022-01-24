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
struct hn_softc {int hn_flags; int hn_rx_ring_cnt; scalar_t__ hn_rx_ring_inuse; struct hn_rx_ring* hn_rx_ring; int /*<<< orphan*/  hn_dev; int /*<<< orphan*/ * hn_rxbuf; int /*<<< orphan*/  hn_rxbuf_dma; } ;
struct hn_rx_ring {int hn_rx_flags; struct hn_rx_ring* hn_pktbuf; int /*<<< orphan*/  hn_lro; int /*<<< orphan*/ * hn_br; int /*<<< orphan*/  hn_br_dma; } ;

/* Variables and functions */
 int HN_FLAG_RXBUF_REF ; 
 int HN_RX_FLAG_BR_REF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_rx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct hn_softc *sc)
{
	int i;

	if (sc->hn_rxbuf != NULL) {
		if ((sc->hn_flags & HN_FLAG_RXBUF_REF) == 0)
			FUNC2(&sc->hn_rxbuf_dma, sc->hn_rxbuf);
		else
			FUNC0(sc->hn_dev, "RXBUF is referenced\n");
		sc->hn_rxbuf = NULL;
	}

	if (sc->hn_rx_ring_cnt == 0)
		return;

	for (i = 0; i < sc->hn_rx_ring_cnt; ++i) {
		struct hn_rx_ring *rxr = &sc->hn_rx_ring[i];

		if (rxr->hn_br == NULL)
			continue;
		if ((rxr->hn_rx_flags & HN_RX_FLAG_BR_REF) == 0) {
			FUNC2(&rxr->hn_br_dma, rxr->hn_br);
		} else {
			FUNC0(sc->hn_dev,
			    "%dth channel bufring is referenced", i);
		}
		rxr->hn_br = NULL;

#if defined(INET) || defined(INET6)
		tcp_lro_free(&rxr->hn_lro);
#endif
		FUNC1(rxr->hn_pktbuf, M_DEVBUF);
	}
	FUNC1(sc->hn_rx_ring, M_DEVBUF);
	sc->hn_rx_ring = NULL;

	sc->hn_rx_ring_cnt = 0;
	sc->hn_rx_ring_inuse = 0;
}