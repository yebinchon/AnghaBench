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
struct rt_softc {int rx_ring_count; int /*<<< orphan*/ * rx_calc_idx; int /*<<< orphan*/ * rx_max_cnt; TYPE_1__* rx_ring; int /*<<< orphan*/ * rx_base_ptr; int /*<<< orphan*/  pdma_glo_cfg; int /*<<< orphan*/  rx_coherent_interrupts; } ;
struct TYPE_2__ {int desc_phys_addr; } ;

/* Variables and functions */
 int FE_RX_DMA_EN ; 
 int /*<<< orphan*/  RT_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct rt_softc*,int /*<<< orphan*/ ) ; 
 int RT_SOFTC_RX_RING_DATA_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 

__attribute__((used)) static void
FUNC5(struct rt_softc *sc)
{
	uint32_t tmp;
	int i;

	FUNC0(sc, RT_DEBUG_INTR, "Rx coherent interrupt\n");

	sc->rx_coherent_interrupts++;

	/* restart DMA engine */
	tmp = FUNC1(sc, sc->pdma_glo_cfg);
	tmp &= ~(FE_RX_DMA_EN);
	FUNC2(sc, sc->pdma_glo_cfg, tmp);

	/* init Rx ring */
	for (i = 0; i < sc->rx_ring_count; i++)
		FUNC3(sc, &sc->rx_ring[i]);

	for (i = 0; i < sc->rx_ring_count; i++) {
		FUNC2(sc, sc->rx_base_ptr[i],
			sc->rx_ring[i].desc_phys_addr);
		FUNC2(sc, sc->rx_max_cnt[i],
			RT_SOFTC_RX_RING_DATA_COUNT);
		FUNC2(sc, sc->rx_calc_idx[i],
			RT_SOFTC_RX_RING_DATA_COUNT - 1);
	}

	FUNC4(sc);
}