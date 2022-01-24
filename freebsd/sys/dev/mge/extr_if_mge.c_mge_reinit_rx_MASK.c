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
struct mge_softc {int /*<<< orphan*/  rx_desc_start; scalar_t__ rx_desc_curr; struct mge_desc_wrapper* mge_rx_desc; int /*<<< orphan*/  mge_rx_dtag; } ;
struct mge_desc_wrapper {int /*<<< orphan*/  mge_desc_paddr; TYPE_1__* mge_desc; int /*<<< orphan*/  buffer; int /*<<< orphan*/  buffer_dmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGE_RX_DEFAULT_QUEUE ; 
 int MGE_RX_DESC_NUM ; 
 int /*<<< orphan*/  MGE_RX_QUEUE_CMD ; 
 int /*<<< orphan*/  FUNC3 (struct mge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mge_softc*,struct mge_desc_wrapper*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mge_softc*,struct mge_desc_wrapper*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct mge_softc *sc)
{
	struct mge_desc_wrapper *dw;
	int i;

	FUNC1(sc);

	FUNC5(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM, sc->mge_rx_dtag, 1);

	FUNC4(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM,
	    &sc->mge_rx_dtag);

	for (i = 0; i < MGE_RX_DESC_NUM; i++) {
		dw = &(sc->mge_rx_desc[i]);
		FUNC6(sc->mge_rx_dtag, dw->buffer_dmap, &dw->buffer,
		&dw->mge_desc->buffer);
	}

	sc->rx_desc_start = sc->mge_rx_desc[0].mge_desc_paddr;
	sc->rx_desc_curr = 0;

	FUNC3(sc, FUNC2(MGE_RX_DEFAULT_QUEUE),
	    sc->rx_desc_start);

	/* Enable RX queue */
	FUNC3(sc, MGE_RX_QUEUE_CMD, FUNC0(MGE_RX_DEFAULT_QUEUE));
}