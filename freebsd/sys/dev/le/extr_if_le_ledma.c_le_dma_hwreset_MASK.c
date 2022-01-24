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
typedef  int uint32_t ;
struct lsi64854_softc {int /*<<< orphan*/  sc_res; } ;
struct le_dma_softc {int sc_laddr; struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lsi64854_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lsi64854_softc*) ; 
 int E_DSBL_WR_INVAL ; 
 int E_TP_AUI ; 
 int FUNC3 (struct lsi64854_softc*) ; 
 int /*<<< orphan*/  L64854_REG_ENBAR ; 
 int /*<<< orphan*/  FUNC4 (struct lsi64854_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct lance_softc *sc)
{
	struct le_dma_softc *lesc = (struct le_dma_softc *)sc;
	struct lsi64854_softc *dma = lesc->sc_dma;
	uint32_t aui_bit, csr;

	/*
	 * Reset DMA channel.
	 */
	csr = FUNC3(dma);
	aui_bit = csr & E_TP_AUI;
	FUNC2(dma);

	/* Write bits 24-31 of Lance address. */
	FUNC5(dma->sc_res, L64854_REG_ENBAR,
	    lesc->sc_laddr & 0xff000000);

	FUNC1(dma);

	/*
	 * Disable E-cache invalidates on chip writes.
	 * Retain previous cable selection bit.
	 */
	csr = FUNC3(dma);
	csr |= (E_DSBL_WR_INVAL | aui_bit);
	FUNC4(dma, csr);
	FUNC0(20000);	/* We must not touch the LANCE chip for 20ms. */
}