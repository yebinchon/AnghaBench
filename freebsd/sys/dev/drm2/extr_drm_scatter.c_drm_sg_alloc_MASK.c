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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  size_t vm_pindex_t ;
struct drm_sg_mem {int pages; scalar_t__ vaddr; struct drm_sg_mem* busaddr; } ;
struct drm_scatter_gather {scalar_t__ handle; int /*<<< orphan*/  size; } ;
struct drm_device {struct drm_sg_mem* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int /*<<< orphan*/  DRM_MEM_SGLISTS ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (size_t) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_sg_mem*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct drm_sg_mem FUNC8 (scalar_t__) ; 

int FUNC9(struct drm_device *dev, struct drm_scatter_gather * request)
{
	struct drm_sg_mem *entry;
	vm_size_t size;
	vm_pindex_t pindex;

	FUNC0("\n");

	if (!FUNC3(dev, DRIVER_SG))
		return -EINVAL;

	if (dev->sg)
		return -EINVAL;

	entry = FUNC6(sizeof(*entry), DRM_MEM_DRIVER, M_NOWAIT | M_ZERO);
	if (!entry)
		return -ENOMEM;

	FUNC0("request size=%ld\n", request->size);

	size = FUNC7(request->size);
	entry->pages = FUNC2(size);
	entry->busaddr = FUNC6(entry->pages * sizeof(*entry->busaddr),
	    DRM_MEM_SGLISTS, M_NOWAIT | M_ZERO);
	if (!entry->busaddr) {
		FUNC5(entry, DRM_MEM_DRIVER);
		return -ENOMEM;
	}

	entry->vaddr = FUNC4(size);
	if (entry->vaddr == 0) {
		FUNC5(entry->busaddr, DRM_MEM_DRIVER);
		FUNC5(entry, DRM_MEM_DRIVER);
		return -ENOMEM;
	}

	for (pindex = 0; pindex < entry->pages; pindex++) {
		entry->busaddr[pindex] =
		    FUNC8(entry->vaddr + FUNC1(pindex));
	}

	request->handle = entry->vaddr;

	dev->sg = entry;

	FUNC0("allocated %ju pages @ 0x%08zx, contents=%08lx\n",
	    entry->pages, entry->vaddr, *(unsigned long *)entry->vaddr);

	return 0;
}