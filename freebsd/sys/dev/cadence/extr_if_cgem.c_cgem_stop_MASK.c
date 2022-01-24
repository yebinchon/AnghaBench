#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cgem_softc {scalar_t__ mii_media_active; scalar_t__ rxring_queued; scalar_t__ rxring_tl_ptr; scalar_t__ rxring_hd_ptr; TYPE_2__* rxring; int /*<<< orphan*/ ** rxring_m; int /*<<< orphan*/ ** rxring_m_dmamap; int /*<<< orphan*/  mbuf_dma_tag; scalar_t__ txring_queued; scalar_t__ txring_tl_ptr; scalar_t__ txring_hd_ptr; TYPE_1__* txring; int /*<<< orphan*/ ** txring_m; int /*<<< orphan*/ ** txring_m_dmamap; int /*<<< orphan*/  tick_ch; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; scalar_t__ ctl; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctl; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int CGEM_NUM_RX_DESCS ; 
 int CGEM_NUM_TX_DESCS ; 
 int /*<<< orphan*/  CGEM_RXDESC_OWN ; 
 int /*<<< orphan*/  CGEM_RXDESC_WRAP ; 
 int /*<<< orphan*/  CGEM_TXDESC_USED ; 
 int /*<<< orphan*/  CGEM_TXDESC_WRAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct cgem_softc *sc)
{
	int i;

	FUNC0(sc);

	FUNC3(&sc->tick_ch);

	/* Shut down hardware. */
	FUNC4(sc);

	/* Clear out transmit queue. */
	for (i = 0; i < CGEM_NUM_TX_DESCS; i++) {
		sc->txring[i].ctl = CGEM_TXDESC_USED;
		sc->txring[i].addr = 0;
		if (sc->txring_m[i]) {
			/* Unload and destroy dmamap. */
			FUNC2(sc->mbuf_dma_tag,
					  sc->txring_m_dmamap[i]);
			FUNC1(sc->mbuf_dma_tag,
					   sc->txring_m_dmamap[i]);
			sc->txring_m_dmamap[i] = NULL;
			FUNC5(sc->txring_m[i]);
			sc->txring_m[i] = NULL;
		}
	}
	sc->txring[CGEM_NUM_TX_DESCS - 1].ctl |= CGEM_TXDESC_WRAP;

	sc->txring_hd_ptr = 0;
	sc->txring_tl_ptr = 0;
	sc->txring_queued = 0;

	/* Clear out receive queue. */
	for (i = 0; i < CGEM_NUM_RX_DESCS; i++) {
		sc->rxring[i].addr = CGEM_RXDESC_OWN;
		sc->rxring[i].ctl = 0;
		if (sc->rxring_m[i]) {
			/* Unload and destroy dmamap. */
			FUNC2(sc->mbuf_dma_tag,
				  sc->rxring_m_dmamap[i]);
			FUNC1(sc->mbuf_dma_tag,
				   sc->rxring_m_dmamap[i]);
			sc->rxring_m_dmamap[i] = NULL;

			FUNC5(sc->rxring_m[i]);
			sc->rxring_m[i] = NULL;
		}
	}
	sc->rxring[CGEM_NUM_RX_DESCS - 1].addr |= CGEM_RXDESC_WRAP;

	sc->rxring_hd_ptr = 0;
	sc->rxring_tl_ptr = 0;
	sc->rxring_queued = 0;

	/* Force next statchg or linkchg to program net config register. */
	sc->mii_media_active = 0;
}