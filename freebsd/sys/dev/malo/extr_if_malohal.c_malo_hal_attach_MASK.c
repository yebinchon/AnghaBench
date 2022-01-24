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
typedef  int /*<<< orphan*/  uint16_t ;
struct malo_hal {scalar_t__ mh_dmat; int /*<<< orphan*/  mh_dmamap; int /*<<< orphan*/ * mh_cmdbuf; int /*<<< orphan*/  mh_cmdaddr; int /*<<< orphan*/  mh_mtxname; int /*<<< orphan*/  mh_mtx; int /*<<< orphan*/  mh_iot; int /*<<< orphan*/  mh_ioh; int /*<<< orphan*/  mh_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  MALO_CMDBUF_SIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct malo_hal*,int /*<<< orphan*/ ) ; 
 struct malo_hal* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  malo_hal_load_cb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 

struct malo_hal *
FUNC11(device_t dev, uint16_t devid,
    bus_space_handle_t ioh, bus_space_tag_t iot, bus_dma_tag_t tag)
{
	int error;
	struct malo_hal *mh;

	mh = FUNC8(sizeof(struct malo_hal), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (mh == NULL)
		return NULL;

	mh->mh_dev = dev;
	mh->mh_ioh = ioh;
	mh->mh_iot = iot;

	FUNC10(mh->mh_mtxname, sizeof(mh->mh_mtxname),
	    "%s_hal", FUNC5(dev));
	FUNC9(&mh->mh_mtx, mh->mh_mtxname, NULL, MTX_DEF);

	/*
	 * Allocate the command buffer and map into the address
	 * space of the h/w.  We request "coherent" memory which
	 * will be uncached on some architectures.
	 */
	error = FUNC0(tag,		/* parent */
		       PAGE_SIZE, 0,		/* alignment, bounds */
		       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
		       BUS_SPACE_MAXADDR,	/* highaddr */
		       NULL, NULL,		/* filter, filterarg */
		       MALO_CMDBUF_SIZE,	/* maxsize */
		       1,			/* nsegments */
		       MALO_CMDBUF_SIZE,	/* maxsegsize */
		       BUS_DMA_ALLOCNOW,	/* flags */
		       NULL,			/* lockfunc */
		       NULL,			/* lockarg */
		       &mh->mh_dmat);
	if (error != 0) {
		FUNC6(dev, "unable to allocate memory for cmd tag, "
			"error %u\n", error);
		goto fail;
	}

	/* allocate descriptors */
	error = FUNC3(mh->mh_dmat, (void**) &mh->mh_cmdbuf,
				 BUS_DMA_NOWAIT | BUS_DMA_COHERENT, 
				 &mh->mh_dmamap);
	if (error != 0) {
		FUNC6(dev, "unable to allocate memory for cmd buffer, "
			"error %u\n", error);
		goto fail;
	}

	error = FUNC2(mh->mh_dmat, mh->mh_dmamap,
				mh->mh_cmdbuf, MALO_CMDBUF_SIZE,
				malo_hal_load_cb, &mh->mh_cmdaddr,
				BUS_DMA_NOWAIT);
	if (error != 0) {
		FUNC6(dev, "unable to load cmd buffer, error %u\n",
			error);
		goto fail;
	}

	return (mh);

fail:
	if (mh->mh_cmdbuf != NULL)
		FUNC4(mh->mh_dmat, mh->mh_cmdbuf,
		    mh->mh_dmamap);
	if (mh->mh_dmat)
		FUNC1(mh->mh_dmat);
	FUNC7(mh, M_DEVBUF);

	return (NULL);
}