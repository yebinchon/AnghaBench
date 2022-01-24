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
typedef  int uint32_t ;
struct mbuf {int dummy; } ;
struct cgem_softc {scalar_t__ txring_queued; size_t txring_tl_ptr; int /*<<< orphan*/  ifp; TYPE_1__* txring; int /*<<< orphan*/  dev; struct mbuf** txring_m; int /*<<< orphan*/ ** txring_m_dmamap; int /*<<< orphan*/  mbuf_dma_tag; } ;
struct TYPE_2__ {int ctl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int CGEM_TXDESC_AHB_ERR ; 
 int CGEM_TXDESC_LAST_BUF ; 
 int CGEM_TXDESC_LATE_COLL ; 
 int CGEM_TXDESC_RETRY_ERR ; 
 int CGEM_TXDESC_USED ; 
 int CGEM_TXDESC_WRAP ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC8(struct cgem_softc *sc)
{
	struct mbuf *m;
	uint32_t ctl;

	FUNC0(sc);

	/* free up finished transmits. */
	while (sc->txring_queued > 0 &&
	       ((ctl = sc->txring[sc->txring_tl_ptr].ctl) &
		CGEM_TXDESC_USED) != 0) {

		/* Sync cache. */
		FUNC2(sc->mbuf_dma_tag,
				sc->txring_m_dmamap[sc->txring_tl_ptr],
				BUS_DMASYNC_POSTWRITE);

		/* Unload and destroy DMA map. */
		FUNC3(sc->mbuf_dma_tag,
				  sc->txring_m_dmamap[sc->txring_tl_ptr]);
		FUNC1(sc->mbuf_dma_tag,
				   sc->txring_m_dmamap[sc->txring_tl_ptr]);
		sc->txring_m_dmamap[sc->txring_tl_ptr] = NULL;

		/* Free up the mbuf. */
		m = sc->txring_m[sc->txring_tl_ptr];
		sc->txring_m[sc->txring_tl_ptr] = NULL;
		FUNC7(m);

		/* Check the status. */
		if ((ctl & CGEM_TXDESC_AHB_ERR) != 0) {
			/* Serious bus error. log to console. */
			FUNC4(sc->dev, "cgem_clean_tx: Whoa! "
				   "AHB error, addr=0x%x\n",
				   sc->txring[sc->txring_tl_ptr].addr);
		} else if ((ctl & (CGEM_TXDESC_RETRY_ERR |
				   CGEM_TXDESC_LATE_COLL)) != 0) {
			FUNC5(sc->ifp, IFCOUNTER_OERRORS, 1);
		} else
			FUNC5(sc->ifp, IFCOUNTER_OPACKETS, 1);

		/* If the packet spanned more than one tx descriptor,
		 * skip descriptors until we find the end so that only
		 * start-of-frame descriptors are processed.
		 */
		while ((ctl & CGEM_TXDESC_LAST_BUF) == 0) {
			if ((ctl & CGEM_TXDESC_WRAP) != 0)
				sc->txring_tl_ptr = 0;
			else
				sc->txring_tl_ptr++;
			sc->txring_queued--;

			ctl = sc->txring[sc->txring_tl_ptr].ctl;

			sc->txring[sc->txring_tl_ptr].ctl =
				ctl | CGEM_TXDESC_USED;
		}

		/* Next descriptor. */
		if ((ctl & CGEM_TXDESC_WRAP) != 0)
			sc->txring_tl_ptr = 0;
		else
			sc->txring_tl_ptr++;
		sc->txring_queued--;

		FUNC6(sc->ifp, 0, IFF_DRV_OACTIVE);
	}
}