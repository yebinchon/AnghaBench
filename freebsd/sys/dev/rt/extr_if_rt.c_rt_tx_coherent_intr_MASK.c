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
struct rt_softc {int /*<<< orphan*/ * tx_ctx_idx; int /*<<< orphan*/ * tx_max_cnt; TYPE_1__* tx_ring; int /*<<< orphan*/ * tx_base_ptr; int /*<<< orphan*/  pdma_glo_cfg; int /*<<< orphan*/  tx_coherent_interrupts; } ;
struct TYPE_2__ {int desc_phys_addr; } ;

/* Variables and functions */
 int FE_TX_DMA_EN ; 
 int FE_TX_WB_DDONE ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct rt_softc*,int /*<<< orphan*/ ) ; 
 int RT_SOFTC_TX_RING_COUNT ; 
 int RT_SOFTC_TX_RING_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 

__attribute__((used)) static void
FUNC5(struct rt_softc *sc)
{
	uint32_t tmp;
	int i;

	FUNC0(sc, RT_DEBUG_INTR, "Tx coherent interrupt\n");

	sc->tx_coherent_interrupts++;

	/* restart DMA engine */
	tmp = FUNC1(sc, sc->pdma_glo_cfg);
	tmp &= ~(FE_TX_WB_DDONE | FE_TX_DMA_EN);
	FUNC2(sc, sc->pdma_glo_cfg, tmp);

	for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++)
		FUNC3(sc, &sc->tx_ring[i]);

	for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++) {
		FUNC2(sc, sc->tx_base_ptr[i],
			sc->tx_ring[i].desc_phys_addr);
		FUNC2(sc, sc->tx_max_cnt[i],
			RT_SOFTC_TX_RING_DESC_COUNT);
		FUNC2(sc, sc->tx_ctx_idx[i], 0);
	}

	FUNC4(sc);
}