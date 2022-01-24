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
struct cesa_softc {scalar_t__ sc_soc_id; int /*<<< orphan*/  sc_sc_lock; int /*<<< orphan*/  sc_tdesc_lock; int /*<<< orphan*/  sc_sdesc_lock; int /*<<< orphan*/  sc_requests_lock; int /*<<< orphan*/  sc_sessions_lock; int /*<<< orphan*/  sc_sram_size; int /*<<< orphan*/  sc_sram_base_va; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_icookie; int /*<<< orphan*/  sc_data_dtag; int /*<<< orphan*/  sc_tdesc_cdm; int /*<<< orphan*/  sc_sdesc_cdm; int /*<<< orphan*/  sc_requests_cdm; TYPE_1__* sc_requests; int /*<<< orphan*/  sc_cid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  cr_dmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_ICM ; 
 int /*<<< orphan*/  FUNC0 (struct cesa_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CESA_REQUESTS ; 
 int /*<<< orphan*/  CESA_TDMA_EMR ; 
 int /*<<< orphan*/  FUNC1 (struct cesa_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MV_DEV_88F6810 ; 
 scalar_t__ MV_DEV_88F6820 ; 
 scalar_t__ MV_DEV_88F6828 ; 
 size_t RES_CESA_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cesa_res_spec ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct cesa_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct cesa_softc *sc;
	int i;
 
	sc = FUNC8(dev);

	/* TODO: Wait for queued requests completion before shutdown. */

	/* Mask interrupts */
	FUNC0(sc, CESA_ICM, 0);
	FUNC1(sc, CESA_TDMA_EMR, 0);

	/* Unregister from OCF */
	FUNC7(sc->sc_cid);

	/* Free DMA Maps */
	for (i = 0; i < CESA_REQUESTS; i++)
		FUNC3(sc->sc_data_dtag,
		    sc->sc_requests[i].cr_dmap);

	/* Free DMA Memory */
	FUNC6(&sc->sc_requests_cdm);
	FUNC6(&sc->sc_sdesc_cdm);
	FUNC6(&sc->sc_tdesc_cdm);

	/* Free DMA Tag */
	FUNC2(sc->sc_data_dtag);

	/* Stop interrupt */
	FUNC5(dev, sc->sc_res[RES_CESA_IRQ], sc->sc_icookie);

	/* Relase I/O and IRQ resources */
	FUNC4(dev, cesa_res_spec, sc->sc_res);

	/* Unmap SRAM memory */
	if (sc->sc_soc_id == MV_DEV_88F6828 ||
	    sc->sc_soc_id == MV_DEV_88F6820 ||
	    sc->sc_soc_id == MV_DEV_88F6810)
		FUNC10(sc->sc_sram_base_va, sc->sc_sram_size);

	/* Destroy mutexes */
	FUNC9(&sc->sc_sessions_lock);
	FUNC9(&sc->sc_requests_lock);
	FUNC9(&sc->sc_sdesc_lock);
	FUNC9(&sc->sc_tdesc_lock);
	FUNC9(&sc->sc_sc_lock);

	return (0);
}