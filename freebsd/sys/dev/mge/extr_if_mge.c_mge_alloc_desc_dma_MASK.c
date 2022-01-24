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
typedef  int uint32_t ;
struct mge_softc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  dev; int /*<<< orphan*/  mge_desc_dtag; } ;
struct mge_desc_wrapper {TYPE_1__* mge_desc; struct mbuf* buffer; int /*<<< orphan*/  buffer_dmap; void* mge_desc_paddr; int /*<<< orphan*/  desc_dmap; } ;
struct mge_desc {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  void* bus_addr_t ;
struct TYPE_3__ {void* buffer; void* next_desc; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,void**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mge_get_dma_addr ; 

__attribute__((used)) static int
FUNC7(struct mge_softc *sc, struct mge_desc_wrapper* tab,
    uint32_t size, bus_dma_tag_t *buffer_tag)
{
	struct mge_desc_wrapper *dw;
	bus_addr_t desc_paddr;
	int i, error;

	desc_paddr = 0;
	for (i = size - 1; i >= 0; i--) {
		dw = &(tab[i]);
		error = FUNC3(sc->mge_desc_dtag,
		    (void**)&(dw->mge_desc),
		    BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT,
		    &(dw->desc_dmap));

		if (error) {
			FUNC6(sc->ifp, "failed to allocate DMA memory\n");
			dw->mge_desc = NULL;
			return (ENXIO);
		}

		error = FUNC2(sc->mge_desc_dtag, dw->desc_dmap,
		    dw->mge_desc, sizeof(struct mge_desc), mge_get_dma_addr,
		    &(dw->mge_desc_paddr), BUS_DMA_NOWAIT);

		if (error) {
			FUNC6(sc->ifp, "can't load descriptor\n");
			FUNC4(sc->mge_desc_dtag, dw->mge_desc,
			    dw->desc_dmap);
			dw->mge_desc = NULL;
			return (ENXIO);
		}

		/* Chain descriptors */
		dw->mge_desc->next_desc = desc_paddr;
		desc_paddr = dw->mge_desc_paddr;
	}
	tab[size - 1].mge_desc->next_desc = desc_paddr;

	/* Allocate a busdma tag for mbufs. */
	error = FUNC0(FUNC5(sc->dev),	/* parent */
	    1, 0,				/* alignment, boundary */
	    BUS_SPACE_MAXADDR_32BIT,		/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filtfunc, filtfuncarg */
	    MCLBYTES, 1,			/* maxsize, nsegments */
	    MCLBYTES, 0,			/* maxsegsz, flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    buffer_tag);			/* dmat */
	if (error) {
		FUNC6(sc->ifp, "failed to create busdma tag for mbufs\n");
		return (ENXIO);
	}

	/* Create TX busdma maps */
	for (i = 0; i < size; i++) {
		dw = &(tab[i]);
		error = FUNC1(*buffer_tag, 0, &dw->buffer_dmap);
		if (error) {
			FUNC6(sc->ifp, "failed to create map for mbuf\n");
			return (ENXIO);
		}

		dw->buffer = (struct mbuf*)NULL;
		dw->mge_desc->buffer = (bus_addr_t)NULL;
	}

	return (0);
}