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
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {struct mwl_rxdesc* dd_desc; struct mwl_rxbuf* dd_bufptr; } ;
struct mwl_softc {int sc_rxmemsize; int /*<<< orphan*/  sc_nrxfree; int /*<<< orphan*/  sc_rxfree; scalar_t__ sc_rxmem; int /*<<< orphan*/  sc_rxbuf; TYPE_1__ sc_rxdma; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_rxmem_paddr; int /*<<< orphan*/  sc_rxmap; int /*<<< orphan*/  sc_rxdmat; int /*<<< orphan*/  sc_dmat; } ;
struct mwl_rxdesc {int dummy; } ;
struct mwl_rxbuf {int /*<<< orphan*/ * bf_data; int /*<<< orphan*/  bf_daddr; struct mwl_rxdesc* bf_desc; } ;
struct mwl_jumbo {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct mwl_rxdesc*) ; 
 int /*<<< orphan*/  MWL_AGGR_SIZE ; 
 struct mwl_jumbo* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_MWLDEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mwl_jumbo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mwl_rxbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct mwl_rxbuf* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct mwl_softc*,char*,TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  mwl_load_cb ; 
 int mwl_rxbuf ; 
 int mwl_rxdesc ; 
 int /*<<< orphan*/  next ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct mwl_softc *sc)
{
	int error, jumbosize, bsize, i;
	struct mwl_rxbuf *bf;
	struct mwl_jumbo *rbuf;
	struct mwl_rxdesc *ds;
	caddr_t data;

	error = FUNC11(sc, "rx", &sc->sc_rxdma,
			mwl_rxdesc, sizeof(struct mwl_rxbuf),
			1, sizeof(struct mwl_rxdesc));
	if (error != 0)
		return error;

	/*
	 * Receive is done to a private pool of jumbo buffers.
	 * This allows us to attach to mbuf's and avoid re-mapping
	 * memory on each rx we post.  We allocate a large chunk
	 * of memory and manage it in the driver.  The mbuf free
	 * callback method is used to reclaim frames after sending
	 * them up the stack.  By default we allocate 2x the number of
	 * rx descriptors configured so we have some slop to hold
	 * us while frames are processed.
	 */
	if (mwl_rxbuf < 2*mwl_rxdesc) {
		FUNC9(sc->sc_dev,
		    "too few rx dma buffers (%d); increasing to %d\n",
		    mwl_rxbuf, 2*mwl_rxdesc);
		mwl_rxbuf = 2*mwl_rxdesc;
	}
	jumbosize = FUNC12(MWL_AGGR_SIZE, PAGE_SIZE);
	sc->sc_rxmemsize = mwl_rxbuf*jumbosize;

	error = FUNC6(sc->sc_dmat,	/* parent */
		       PAGE_SIZE, 0,		/* alignment, bounds */
		       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
		       BUS_SPACE_MAXADDR,	/* highaddr */
		       NULL, NULL,		/* filter, filterarg */
		       sc->sc_rxmemsize,	/* maxsize */
		       1,			/* nsegments */
		       sc->sc_rxmemsize,	/* maxsegsize */
		       BUS_DMA_ALLOCNOW,	/* flags */
		       NULL,			/* lockfunc */
		       NULL,			/* lockarg */
		       &sc->sc_rxdmat);
	if (error != 0) {
		FUNC9(sc->sc_dev, "could not create rx DMA tag\n");
		return error;
	}

	error = FUNC8(sc->sc_rxdmat, (void**) &sc->sc_rxmem,
				 BUS_DMA_NOWAIT | BUS_DMA_COHERENT, 
				 &sc->sc_rxmap);
	if (error != 0) {
		FUNC9(sc->sc_dev, "could not alloc %ju bytes of rx DMA memory\n",
		    (uintmax_t) sc->sc_rxmemsize);
		return error;
	}

	error = FUNC7(sc->sc_rxdmat, sc->sc_rxmap,
				sc->sc_rxmem, sc->sc_rxmemsize,
				mwl_load_cb, &sc->sc_rxmem_paddr,
				BUS_DMA_NOWAIT);
	if (error != 0) {
		FUNC9(sc->sc_dev, "could not load rx DMA map\n");
		return error;
	}

	/*
	 * Allocate rx buffers and set them up.
	 */
	bsize = mwl_rxdesc * sizeof(struct mwl_rxbuf);
	bf = FUNC10(bsize, M_MWLDEV, M_NOWAIT | M_ZERO);
	if (bf == NULL) {
		FUNC9(sc->sc_dev, "malloc of %u rx buffers failed\n", bsize);
		return error;
	}
	sc->sc_rxdma.dd_bufptr = bf;

	FUNC4(&sc->sc_rxbuf);
	ds = sc->sc_rxdma.dd_desc;
	for (i = 0; i < mwl_rxdesc; i++, bf++, ds++) {
		bf->bf_desc = ds;
		bf->bf_daddr = FUNC0(&sc->sc_rxdma, ds);
		/* pre-assign dma buffer */
		bf->bf_data = ((uint8_t *)sc->sc_rxmem) + (i*jumbosize);
		/* NB: tail is intentional to preserve descriptor order */
		FUNC5(&sc->sc_rxbuf, bf, bf_list);
	}

	/*
	 * Place remainder of dma memory buffers on the free list.
	 */
	FUNC2(&sc->sc_rxfree);
	for (; i < mwl_rxbuf; i++) {
		data = ((uint8_t *)sc->sc_rxmem) + (i*jumbosize);
		rbuf = FUNC1(data);
		FUNC3(&sc->sc_rxfree, rbuf, next);
		sc->sc_nrxfree++;
	}
	return 0;
}