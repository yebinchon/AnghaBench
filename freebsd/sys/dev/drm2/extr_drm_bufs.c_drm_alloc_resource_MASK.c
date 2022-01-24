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
struct resource {int dummy; } ;
struct drm_device {int* pcirid; struct resource** pcir; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DRM_MAX_PCI_RESOURCE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, int resource)
{
	struct resource *res;
	int rid;

	if (resource >= DRM_MAX_PCI_RESOURCE) {
		FUNC0("Resource %d too large\n", resource);
		return 1;
	}

	if (dev->pcir[resource] != NULL) {
		return 0;
	}

	rid = FUNC1(resource);
	res = FUNC2(dev->dev, SYS_RES_MEMORY, &rid,
	    RF_SHAREABLE);
	if (res == NULL) {
		FUNC0("Couldn't find resource 0x%x\n", resource);
		return 1;
	}

	if (dev->pcir[resource] == NULL) {
		dev->pcirid[resource] = rid;
		dev->pcir[resource] = res;
	}

	return 0;
}