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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource {int dummy; } ;
struct pci_devinfo {int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 

int
FUNC6(device_t dev, device_t child, int rid,
    struct resource *r)
{
	struct pci_devinfo *dinfo;
	struct resource_list_entry *rle;
	int error;

	dinfo = FUNC1(child);

	if (FUNC4(r) & RF_ACTIVE) {
		error = FUNC0(child, SYS_RES_MEMORY, rid, r);
		if (error != 0)
			return (error);
	}

	rle = FUNC3(&dinfo->resources, SYS_RES_MEMORY, rid);
	if (rle != NULL) {
		rle->res = NULL;
		FUNC2(&dinfo->resources, SYS_RES_MEMORY,
		    rid);
	}

	return (FUNC5(r));
}