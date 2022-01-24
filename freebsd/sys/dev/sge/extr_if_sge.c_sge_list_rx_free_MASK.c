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
struct sge_chain_data {int /*<<< orphan*/  sge_rxmbuf_tag; struct sge_rxdesc* sge_rxdesc; } ;
struct sge_softc {struct sge_chain_data sge_cdata; } ;
struct sge_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int SGE_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct sge_softc *sc)
{
	struct sge_chain_data *cd;
	struct sge_rxdesc *rxd;
	int i;

	FUNC0(sc);
	cd = &sc->sge_cdata;
	for (i = 0; i < SGE_RX_RING_CNT; i++) {
		rxd = &cd->sge_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC1(cd->sge_rxmbuf_tag, rxd->rx_dmamap,
			    BUS_DMASYNC_POSTREAD);
			FUNC2(cd->sge_rxmbuf_tag,
			    rxd->rx_dmamap);
			FUNC3(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}
	return (0);
}