#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  map; int /*<<< orphan*/  vaddr; } ;
typedef  TYPE_1__ drm_dma_handle_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int BUS_DMA_NOCACHE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MEM_DMA ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_pci_busdma_callback ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

drm_dma_handle_t *FUNC11(struct drm_device * dev, size_t size,
    size_t align, dma_addr_t maxaddr)
{
	drm_dma_handle_t *dmah;
	int ret;

	/* Need power-of-two alignment, so fail the allocation if it isn't. */
	if ((align & (align - 1)) != 0) {
		FUNC0("drm_pci_alloc with non-power-of-two alignment %d\n",
		    (int)align);
		return NULL;
	}

	dmah = FUNC8(sizeof(drm_dma_handle_t), DRM_MEM_DMA, M_ZERO | M_NOWAIT);
	if (dmah == NULL)
		return NULL;

	/* Make sure we aren't holding mutexes here */
	FUNC9(&dev->dma_lock, MA_NOTOWNED);
	if (FUNC10(&dev->dma_lock))
	    FUNC0("called while holding dma_lock\n");

	ret = FUNC1(
	    FUNC6(dev->dev), /* parent */
	    align, 0, /* align, boundary */
	    maxaddr, BUS_SPACE_MAXADDR, /* lowaddr, highaddr */
	    NULL, NULL, /* filtfunc, filtfuncargs */
	    size, 1, size, /* maxsize, nsegs, maxsegsize */
	    0, NULL, NULL, /* flags, lockfunc, lockfuncargs */
	    &dmah->tag);
	if (ret != 0) {
		FUNC7(dmah, DRM_MEM_DMA);
		return NULL;
	}

	ret = FUNC4(dmah->tag, &dmah->vaddr,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_NOCACHE, &dmah->map);
	if (ret != 0) {
		FUNC2(dmah->tag);
		FUNC7(dmah, DRM_MEM_DMA);
		return NULL;
	}

	ret = FUNC3(dmah->tag, dmah->map, dmah->vaddr, size,
	    drm_pci_busdma_callback, dmah, BUS_DMA_NOWAIT);
	if (ret != 0) {
		FUNC5(dmah->tag, dmah->vaddr, dmah->map);
		FUNC2(dmah->tag);
		FUNC7(dmah, DRM_MEM_DMA);
		return NULL;
	}

	return dmah;
}