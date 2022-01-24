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
struct ffec_softc {int is_detaching; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ ** intr_cookie; int /*<<< orphan*/ * txdesc_tag; int /*<<< orphan*/ * txdesc_map; int /*<<< orphan*/ * txbuf_tag; TYPE_2__* txbuf_map; int /*<<< orphan*/ * rxdesc_tag; int /*<<< orphan*/ * rxdesc_map; int /*<<< orphan*/ * rxbuf_tag; TYPE_1__* rxbuf_map; int /*<<< orphan*/  ifp; int /*<<< orphan*/  ffec_callout; scalar_t__ is_attached; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * bus_dmamap_t ;
struct TYPE_4__ {int /*<<< orphan*/ * map; } ;
struct TYPE_3__ {int /*<<< orphan*/  mbuf; int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ffec_softc*) ; 
 int MAX_IRQ_COUNT ; 
 int RX_DESC_COUNT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TX_DESC_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ffec_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ffec_softc*) ; 
 int /*<<< orphan*/  irq_res_spec ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct ffec_softc *sc;
	bus_dmamap_t map;
	int idx, irq;

	/*
	 * NB: This function can be called internally to unwind a failure to
	 * attach. Make sure a resource got allocated/created before destroying.
	 */

	sc = FUNC10(dev);

	if (sc->is_attached) {
		FUNC0(sc);
		sc->is_detaching = true;
		FUNC12(sc);
		FUNC2(sc);
		FUNC9(&sc->ffec_callout);
		FUNC11(sc->ifp);
	}

	/* XXX no miibus detach? */

	/* Clean up RX DMA resources and free mbufs. */
	for (idx = 0; idx < RX_DESC_COUNT; ++idx) {
		if ((map = sc->rxbuf_map[idx].map) != NULL) {
			FUNC5(sc->rxbuf_tag, map);
			FUNC4(sc->rxbuf_tag, map);
			FUNC13(sc->rxbuf_map[idx].mbuf);
		}
	}
	if (sc->rxbuf_tag != NULL)
		FUNC3(sc->rxbuf_tag);
	if (sc->rxdesc_map != NULL) {
		FUNC5(sc->rxdesc_tag, sc->rxdesc_map);
		FUNC4(sc->rxdesc_tag, sc->rxdesc_map);
	}
	if (sc->rxdesc_tag != NULL)
	FUNC3(sc->rxdesc_tag);

	/* Clean up TX DMA resources. */
	for (idx = 0; idx < TX_DESC_COUNT; ++idx) {
		if ((map = sc->txbuf_map[idx].map) != NULL) {
			/* TX maps are already unloaded. */
			FUNC4(sc->txbuf_tag, map);
		}
	}
	if (sc->txbuf_tag != NULL)
		FUNC3(sc->txbuf_tag);
	if (sc->txdesc_map != NULL) {
		FUNC5(sc->txdesc_tag, sc->txdesc_map);
		FUNC4(sc->txdesc_tag, sc->txdesc_map);
	}
	if (sc->txdesc_tag != NULL)
		FUNC3(sc->txdesc_tag);

	/* Release bus resources. */
	for (irq = 0; irq < MAX_IRQ_COUNT; ++irq) {
		if (sc->intr_cookie[irq] != NULL) {
			FUNC8(dev, sc->irq_res[irq],
			    sc->intr_cookie[irq]);
		}
	}
	FUNC7(dev, irq_res_spec, sc->irq_res);

	if (sc->mem_res != NULL)
		FUNC6(dev, SYS_RES_MEMORY, 0, sc->mem_res);

	FUNC1(sc);
	return (0);
}