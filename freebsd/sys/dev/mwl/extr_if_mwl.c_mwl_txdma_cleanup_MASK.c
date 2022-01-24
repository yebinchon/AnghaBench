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
struct TYPE_2__ {scalar_t__ dd_desc_len; struct mwl_txbuf* dd_bufptr; } ;
struct mwl_txq {TYPE_1__ dma; scalar_t__ nfree; int /*<<< orphan*/  free; } ;
struct mwl_txbuf {int /*<<< orphan*/ * bf_dmamap; int /*<<< orphan*/ * bf_node; int /*<<< orphan*/ * bf_m; } ;
struct mwl_softc {int /*<<< orphan*/  sc_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_MWLDEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_txbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_softc*,TYPE_1__*) ; 
 int mwl_txbuf ; 

__attribute__((used)) static void
FUNC5(struct mwl_softc *sc, struct mwl_txq *txq)
{
	struct mwl_txbuf *bf;
	int i;

	bf = txq->dma.dd_bufptr;
	for (i = 0; i < mwl_txbuf; i++, bf++) {
		FUNC0(bf->bf_m == NULL, ("mbuf on free list"));
		FUNC0(bf->bf_node == NULL, ("node on free list"));
		if (bf->bf_dmamap != NULL)
			FUNC2(sc->sc_dmat, bf->bf_dmamap);
	}
	FUNC1(&txq->free);
	txq->nfree = 0;
	if (txq->dma.dd_bufptr != NULL) {
		FUNC3(txq->dma.dd_bufptr, M_MWLDEV);
		txq->dma.dd_bufptr = NULL;
	}
	if (txq->dma.dd_desc_len != 0)
		FUNC4(sc, &txq->dma);
}