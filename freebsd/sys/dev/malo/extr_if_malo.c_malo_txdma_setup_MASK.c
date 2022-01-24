#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct malo_txdesc* dd_desc; struct malo_txbuf* dd_bufptr; } ;
struct malo_txq {scalar_t__ nfree; int /*<<< orphan*/  free; TYPE_1__ dma; } ;
struct malo_txdesc {int dummy; } ;
struct malo_txbuf {int /*<<< orphan*/  bf_dmamap; int /*<<< orphan*/  bf_daddr; struct malo_txdesc* bf_desc; } ;
struct malo_softc {int /*<<< orphan*/  malo_dev; int /*<<< orphan*/  malo_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct malo_txdesc*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MALO_TXDESC ; 
 int /*<<< orphan*/  M_MALODEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct malo_txbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct malo_txbuf* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct malo_softc*,char*,TYPE_1__*,int,int,int /*<<< orphan*/ ,int) ; 
 int malo_txbuf ; 

__attribute__((used)) static int
FUNC7(struct malo_softc *sc, struct malo_txq *txq)
{
	int error, bsize, i;
	struct malo_txbuf *bf;
	struct malo_txdesc *ds;

	error = FUNC6(sc, "tx", &txq->dma,
	    malo_txbuf, sizeof(struct malo_txbuf),
	    MALO_TXDESC, sizeof(struct malo_txdesc));
	if (error != 0)
		return error;
	
	/* allocate and setup tx buffers */
	bsize = malo_txbuf * sizeof(struct malo_txbuf);
	bf = FUNC5(bsize, M_MALODEV, M_NOWAIT | M_ZERO);
	if (bf == NULL) {
		FUNC4(sc->malo_dev, "malloc of %u tx buffers failed\n",
		    malo_txbuf);
		return ENOMEM;
	}
	txq->dma.dd_bufptr = bf;
	
	FUNC1(&txq->free);
	txq->nfree = 0;
	ds = txq->dma.dd_desc;
	for (i = 0; i < malo_txbuf; i++, bf++, ds += MALO_TXDESC) {
		bf->bf_desc = ds;
		bf->bf_daddr = FUNC0(&txq->dma, ds);
		error = FUNC3(sc->malo_dmat, BUS_DMA_NOWAIT,
		    &bf->bf_dmamap);
		if (error != 0) {
			FUNC4(sc->malo_dev,
			    "unable to create dmamap for tx "
			    "buffer %u, error %u\n", i, error);
			return error;
		}
		FUNC2(&txq->free, bf, bf_list);
		txq->nfree++;
	}

	return 0;
}