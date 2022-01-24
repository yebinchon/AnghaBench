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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtwn_tx_ring {int /*<<< orphan*/  data_dmat; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; scalar_t__ desc; struct rtwn_tx_data* tx_data; } ;
struct rtwn_tx_desc_common {int flags0; scalar_t__ pktlen; int offset; } ;
struct rtwn_tx_data {int /*<<< orphan*/  map; } ;
struct rtwn_softc {int txdesc_len; int /*<<< orphan*/  sc_dev; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int RTWN_FLAGS0_OWN ; 
 size_t RTWN_PCI_BEACON_QUEUE ; 
 struct rtwn_pci_softc* FUNC2 (struct rtwn_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,struct rtwn_tx_desc_common*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_pci_softc*,struct rtwn_tx_desc_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_pci_softc*,struct rtwn_tx_desc_common*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct rtwn_softc *sc, struct mbuf *m,
    uint8_t *tx_desc, int id)
{
	struct rtwn_pci_softc *pc = FUNC2(sc);
	struct rtwn_tx_ring *ring;
	struct rtwn_tx_data *data;
	struct rtwn_tx_desc_common *txd;
	bus_dma_segment_t segs[1];
	int nsegs, error, own;

	FUNC1(sc);

	FUNC0(id == 0 || id == 1, ("bogus vap id %d\n", id));

	ring = &pc->tx_ring[RTWN_PCI_BEACON_QUEUE];
	data = &ring->tx_data[id];
	txd = (struct rtwn_tx_desc_common *)
	    ((uint8_t *)ring->desc + id * sc->txdesc_len);

	FUNC4(ring->desc_dmat, ring->desc_map,
	    BUS_DMASYNC_POSTREAD);
	own = !!(txd->flags0 & RTWN_FLAGS0_OWN);
	error = 0;
	if (!own || txd->pktlen != FUNC7(m->m_pkthdr.len)) {
		if (!own) {
			/* Copy Tx descriptor. */
			FUNC9(pc, txd, tx_desc);
			txd->offset = sc->txdesc_len;
		} else {
			/* Reload mbuf. */
			FUNC5(ring->data_dmat, data->map);
		}

		error = FUNC3(ring->data_dmat,
		    data->map, m, segs, &nsegs, BUS_DMA_NOWAIT);
		if (error != 0) {
			FUNC6(sc->sc_dev,
			    "can't map beacon (error %d)\n", error);
			txd->flags0 &= ~RTWN_FLAGS0_OWN;
			goto end;
		}

		txd->pktlen = FUNC7(m->m_pkthdr.len);
		FUNC10(pc, txd, segs);
		txd->flags0 |= RTWN_FLAGS0_OWN;
end:
		FUNC4(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_PREWRITE);
	}

	/* Dump Tx descriptor. */
	FUNC8(sc, txd);

	FUNC4(ring->data_dmat, data->map, BUS_DMASYNC_PREWRITE);

	return (0);
}