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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_RXDMA_AGG_PG_TH ; 
 int /*<<< orphan*/  R92C_TRXDMA_CTRL ; 
 int /*<<< orphan*/  R92C_TRXDMA_CTRL_RXDMA_AGG_EN ; 
 int /*<<< orphan*/  R92C_USB_AGG_TH ; 
 int /*<<< orphan*/  R92C_USB_AGG_TO ; 
 int /*<<< orphan*/  R92C_USB_DMA_AGG_TO ; 
 int /*<<< orphan*/  R92C_USB_SPECIAL_OPTION ; 
 int /*<<< orphan*/  R92C_USB_SPECIAL_OPTION_AGG_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct rtwn_softc *sc)
{

	/* Rx aggregation (DMA & USB). */
	FUNC0(sc, R92C_TRXDMA_CTRL, 0,
	    R92C_TRXDMA_CTRL_RXDMA_AGG_EN);
	FUNC0(sc, R92C_USB_SPECIAL_OPTION, 0,
	    R92C_USB_SPECIAL_OPTION_AGG_EN);

	/* XXX dehardcode */
	FUNC1(sc, R92C_RXDMA_AGG_PG_TH, 48);
	FUNC1(sc, R92C_USB_DMA_AGG_TO, 4);
	FUNC1(sc, R92C_USB_AGG_TH, 8);
	FUNC1(sc, R92C_USB_AGG_TO, 6);
}