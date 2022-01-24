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
struct cgem_softc {scalar_t__ rxring_physaddr; scalar_t__ txring_physaddr; int /*<<< orphan*/ * mbuf_dma_tag; int /*<<< orphan*/ * desc_dma_tag; int /*<<< orphan*/ ** txring_m_dmamap; int /*<<< orphan*/ * txring; int /*<<< orphan*/  txring_dma_map; int /*<<< orphan*/ ** rxring_m_dmamap; int /*<<< orphan*/ * rxring; int /*<<< orphan*/  rxring_dma_map; int /*<<< orphan*/ * irq_res; scalar_t__ intrhand; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * miibus; int /*<<< orphan*/  ifp; int /*<<< orphan*/  tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgem_softc*) ; 
 int CGEM_NUM_RX_DESCS ; 
 int CGEM_NUM_TX_DESCS ; 
 int /*<<< orphan*/  FUNC2 (struct cgem_softc*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cgem_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cgem_softc* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct cgem_softc *sc = FUNC13(dev);
	int i;

	if (sc == NULL)
		return (ENODEV);

	if (FUNC14(dev)) {
		FUNC0(sc);
		FUNC11(sc);
		FUNC2(sc);
		FUNC10(&sc->tick_ch);
		FUNC16(sc->ifp, 0, IFF_UP);
		FUNC15(sc->ifp);
	}

	if (sc->miibus != NULL) {
		FUNC12(dev, sc->miibus);
		sc->miibus = NULL;
	}

	/* Release resources. */
	if (sc->mem_res != NULL) {
		FUNC8(dev, SYS_RES_MEMORY,
				     FUNC17(sc->mem_res), sc->mem_res);
		sc->mem_res = NULL;
	}
	if (sc->irq_res != NULL) {
		if (sc->intrhand)
			FUNC9(dev, sc->irq_res, sc->intrhand);
		FUNC8(dev, SYS_RES_IRQ,
				     FUNC17(sc->irq_res), sc->irq_res);
		sc->irq_res = NULL;
	}

	/* Release DMA resources. */
	if (sc->rxring != NULL) {
		if (sc->rxring_physaddr != 0) {
			FUNC5(sc->desc_dma_tag,
					  sc->rxring_dma_map);
			sc->rxring_physaddr = 0;
		}
		FUNC6(sc->desc_dma_tag, sc->rxring,
				sc->rxring_dma_map);
		sc->rxring = NULL;
		for (i = 0; i < CGEM_NUM_RX_DESCS; i++)
			if (sc->rxring_m_dmamap[i] != NULL) {
				FUNC4(sc->mbuf_dma_tag,
						   sc->rxring_m_dmamap[i]);
				sc->rxring_m_dmamap[i] = NULL;
			}
	}
	if (sc->txring != NULL) {
		if (sc->txring_physaddr != 0) {
			FUNC5(sc->desc_dma_tag,
					  sc->txring_dma_map);
			sc->txring_physaddr = 0;
		}
		FUNC6(sc->desc_dma_tag, sc->txring,
				sc->txring_dma_map);
		sc->txring = NULL;
		for (i = 0; i < CGEM_NUM_TX_DESCS; i++)
			if (sc->txring_m_dmamap[i] != NULL) {
				FUNC4(sc->mbuf_dma_tag,
						   sc->txring_m_dmamap[i]);
				sc->txring_m_dmamap[i] = NULL;
			}
	}
	if (sc->desc_dma_tag != NULL) {
		FUNC3(sc->desc_dma_tag);
		sc->desc_dma_tag = NULL;
	}
	if (sc->mbuf_dma_tag != NULL) {
		FUNC3(sc->mbuf_dma_tag);
		sc->mbuf_dma_tag = NULL;
	}

	FUNC7(dev);

	FUNC1(sc);

	return (0);
}