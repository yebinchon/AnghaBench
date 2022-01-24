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
struct nf10bmac_softc {int /*<<< orphan*/ * nf10bmac_ctrl_res; int /*<<< orphan*/  nf10bmac_ctrl_rid; int /*<<< orphan*/ * nf10bmac_tx_mem_res; int /*<<< orphan*/  nf10bmac_tx_mem_rid; int /*<<< orphan*/ * nf10bmac_rx_mem_res; int /*<<< orphan*/  nf10bmac_rx_mem_rid; int /*<<< orphan*/ * nf10bmac_intr_res; int /*<<< orphan*/  nf10bmac_intr_rid; int /*<<< orphan*/ * nf10bmac_rx_irq_res; int /*<<< orphan*/  nf10bmac_rx_irq_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nf10bmac_softc* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev)
{
	struct nf10bmac_softc *sc;

	sc = FUNC1(dev);

	if (sc->nf10bmac_rx_irq_res != NULL) {
		FUNC0(dev, SYS_RES_IRQ, sc->nf10bmac_rx_irq_rid,
		    sc->nf10bmac_rx_irq_res);
		sc->nf10bmac_rx_irq_res = NULL;
	}
	if (sc->nf10bmac_intr_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->nf10bmac_intr_rid, sc->nf10bmac_intr_res);
		sc->nf10bmac_intr_res = NULL;
	}
	if (sc->nf10bmac_rx_mem_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->nf10bmac_rx_mem_rid, sc->nf10bmac_rx_mem_res);
		sc->nf10bmac_rx_mem_res = NULL;
	}
	if (sc->nf10bmac_tx_mem_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->nf10bmac_tx_mem_rid, sc->nf10bmac_tx_mem_res);
		sc->nf10bmac_tx_mem_res = NULL;
	}
	if (sc->nf10bmac_ctrl_res != NULL) {
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->nf10bmac_ctrl_rid, sc->nf10bmac_ctrl_res);
		sc->nf10bmac_ctrl_res = NULL;
	}
}