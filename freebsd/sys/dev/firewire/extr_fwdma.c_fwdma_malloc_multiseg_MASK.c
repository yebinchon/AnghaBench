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
struct fwdma_seg {int /*<<< orphan*/ * v_addr; int /*<<< orphan*/  bus_addr; int /*<<< orphan*/  dma_map; } ;
struct fwdma_alloc_multi {int ssize; int esize; int nseg; int /*<<< orphan*/  dma_tag; struct fwdma_seg* seg; } ;
struct firewire_comm {int /*<<< orphan*/  dmat; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct firewire_comm*) ; 
 int /*<<< orphan*/  M_FW ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct fwdma_alloc_multi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fwdma_alloc_multi*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 

struct fwdma_alloc_multi *
FUNC10(struct firewire_comm *fc, int alignment,
		int esize, int n, int flag)
{
	struct fwdma_alloc_multi *am;
	struct fwdma_seg *seg;
	bus_size_t ssize;
	int nseg;

	if (esize > PAGE_SIZE) {
		/* round up to PAGE_SIZE */
		esize = ssize = FUNC9(esize, PAGE_SIZE);
		nseg = n;
	} else {
		/* allocate PAGE_SIZE segment for small elements */
		ssize = FUNC8(PAGE_SIZE, esize);
		nseg = FUNC5(n, ssize / esize);
	}
	am = (struct fwdma_alloc_multi *)FUNC6(sizeof(struct fwdma_alloc_multi)
			+ sizeof(struct fwdma_seg)*nseg, M_FW, M_WAITOK);
	am->ssize = ssize;
	am->esize = esize;
	am->nseg = 0;
	if (FUNC1(
			/*parent*/ fc->dmat,
			/*alignment*/ alignment,
			/*boundary*/ 0,
			/*lowaddr*/ BUS_SPACE_MAXADDR_32BIT,
			/*highaddr*/ BUS_SPACE_MAXADDR,
			/*filter*/NULL, /*filterarg*/NULL,
			/*maxsize*/ ssize,
			/*nsegments*/ 1,
			/*maxsegsz*/ BUS_SPACE_MAXSIZE_32BIT,
			/*flags*/ BUS_DMA_ALLOCNOW,
			/*lockfunc*/busdma_lock_mutex,
			/*lockarg*/FUNC0(fc),
			&am->dma_tag)) {
		FUNC7("fwdma_malloc_multiseg: tag_create failed\n");
		FUNC2(am, M_FW);
		return (NULL);
	}

	for (seg = &am->seg[0]; nseg--; seg++) {
		seg->v_addr = FUNC4(am->dma_tag, &seg->dma_map,
			ssize, &seg->bus_addr, flag);
		if (seg->v_addr == NULL) {
			FUNC7("fwdma_malloc_multi: malloc_size failed %d\n",
				am->nseg);
			FUNC3(am);
			return (NULL);
		}
		am->nseg++;
	}
	return (am);
}