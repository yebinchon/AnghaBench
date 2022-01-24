#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;
struct cgem_softc {int txring_queued; size_t txring_hd_ptr; int net_ctl_shadow; struct mbuf** txring_m; TYPE_1__* txring; int /*<<< orphan*/ ** txring_m_dmamap; int /*<<< orphan*/  mbuf_dma_tag; int /*<<< orphan*/  txdmamapfails; int /*<<< orphan*/  txdefrags; int /*<<< orphan*/  txdefragfails; int /*<<< orphan*/  txfull; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int /*<<< orphan*/  ctl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_NET_CTRL ; 
 int CGEM_NET_CTRL_START_TX ; 
 int CGEM_NUM_TX_DESCS ; 
 int /*<<< orphan*/  CGEM_TXDESC_LAST_BUF ; 
 int /*<<< orphan*/  CGEM_TXDESC_WRAP ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int TX_MAX_DMA_SEGS ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,TYPE_2__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cgem_softc*) ; 
 struct mbuf* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC12 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC14(if_t ifp)
{
	struct cgem_softc *sc = (struct cgem_softc *) FUNC10(ifp);
	struct mbuf *m;
	bus_dma_segment_t segs[TX_MAX_DMA_SEGS];
	uint32_t ctl;
	int i, nsegs, wrap, err;

	FUNC0(sc);

	if ((FUNC9(ifp) & IFF_DRV_OACTIVE) != 0)
		return;

	for (;;) {
		/* Check that there is room in the descriptor ring. */
		if (sc->txring_queued >=
		    CGEM_NUM_TX_DESCS - TX_MAX_DMA_SEGS * 2) {

			/* Try to make room. */
			FUNC7(sc);

			/* Still no room? */
			if (sc->txring_queued >=
			    CGEM_NUM_TX_DESCS - TX_MAX_DMA_SEGS * 2) {
				FUNC11(ifp, IFF_DRV_OACTIVE, 0);
				sc->txfull++;
				break;
			}
		}

		/* Grab next transmit packet. */
		m = FUNC8(ifp);
		if (m == NULL)
			break;

		/* Create and load DMA map. */
		if (FUNC3(sc->mbuf_dma_tag, 0,
			      &sc->txring_m_dmamap[sc->txring_hd_ptr])) {
			FUNC13(m);
			sc->txdmamapfails++;
			continue;
		}
		err = FUNC5(sc->mbuf_dma_tag,
				      sc->txring_m_dmamap[sc->txring_hd_ptr],
				      m, segs, &nsegs, BUS_DMA_NOWAIT);
		if (err == EFBIG) {
			/* Too many segments!  defrag and try again. */
			struct mbuf *m2 = FUNC12(m, M_NOWAIT);

			if (m2 == NULL) {
				sc->txdefragfails++;
				FUNC13(m);
				FUNC4(sc->mbuf_dma_tag,
				   sc->txring_m_dmamap[sc->txring_hd_ptr]);
				sc->txring_m_dmamap[sc->txring_hd_ptr] = NULL;
				continue;
			}
			m = m2;
			err = FUNC5(sc->mbuf_dma_tag,
				      sc->txring_m_dmamap[sc->txring_hd_ptr],
				      m, segs, &nsegs, BUS_DMA_NOWAIT);
			sc->txdefrags++;
		}
		if (err) {
			/* Give up. */
			FUNC13(m);
			FUNC4(sc->mbuf_dma_tag,
				   sc->txring_m_dmamap[sc->txring_hd_ptr]);
			sc->txring_m_dmamap[sc->txring_hd_ptr] = NULL;
			sc->txdmamapfails++;
			continue;
		}
		sc->txring_m[sc->txring_hd_ptr] = m;

		/* Sync tx buffer with cache. */
		FUNC6(sc->mbuf_dma_tag,
				sc->txring_m_dmamap[sc->txring_hd_ptr],
				BUS_DMASYNC_PREWRITE);

		/* Set wrap flag if next packet might run off end of ring. */
		wrap = sc->txring_hd_ptr + nsegs + TX_MAX_DMA_SEGS >=
			CGEM_NUM_TX_DESCS;

		/* Fill in the TX descriptors back to front so that USED
		 * bit in first descriptor is cleared last.
		 */
		for (i = nsegs - 1; i >= 0; i--) {
			/* Descriptor address. */
			sc->txring[sc->txring_hd_ptr + i].addr =
				segs[i].ds_addr;

			/* Descriptor control word. */
			ctl = segs[i].ds_len;
			if (i == nsegs - 1) {
				ctl |= CGEM_TXDESC_LAST_BUF;
				if (wrap)
					ctl |= CGEM_TXDESC_WRAP;
			}
			sc->txring[sc->txring_hd_ptr + i].ctl = ctl;

			if (i != 0)
				sc->txring_m[sc->txring_hd_ptr + i] = NULL;
		}

		if (wrap)
			sc->txring_hd_ptr = 0;
		else
			sc->txring_hd_ptr += nsegs;
		sc->txring_queued += nsegs;

		/* Kick the transmitter. */
		FUNC2(sc, CGEM_NET_CTRL, sc->net_ctl_shadow |
		    CGEM_NET_CTRL_START_TX);

		/* If there is a BPF listener, bounce a copy to him. */
		FUNC1(ifp, m);
	}
}