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
typedef  int u_int ;
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
struct pcicfg_iov {int /*<<< orphan*/  rman; } ;
struct pci_map {int pm_size; scalar_t__ pm_value; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {int /*<<< orphan*/  resources; TYPE_1__ cfg; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 struct pci_map* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 struct resource* FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int) ; 

struct resource *
FUNC8(device_t dev, device_t child, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct pci_devinfo *dinfo;
	struct pcicfg_iov *iov;
	struct pci_map *map;
	struct resource *res;
	struct resource_list_entry *rle;
	rman_res_t bar_start, bar_end;
	pci_addr_t bar_length;
	int error;

	dinfo = FUNC1(child);
	iov = dinfo->cfg.iov;

	map = FUNC2(child, *rid);
	if (map == NULL)
		return (NULL);

	bar_length = 1 << map->pm_size;
	bar_start = map->pm_value;
	bar_end = bar_start + bar_length - 1;

	/* Make sure that the resource fits the constraints. */
	if (bar_start >= end || bar_end <= bar_start || count != 1)
		return (NULL);

	/* Clamp the resource to the constraints if necessary. */
	if (bar_start < start)
		bar_start = start;
	if (bar_end > end)
		bar_end = end;
	bar_length = bar_end - bar_start + 1;

	res = FUNC6(&iov->rman, bar_start, bar_end,
	    bar_length, flags, child);
	if (res == NULL)
		return (NULL);

	rle = FUNC3(&dinfo->resources, SYS_RES_MEMORY, *rid,
	    bar_start, bar_end, 1);
	if (rle == NULL) {
		FUNC5(res);
		return (NULL);
	}

	FUNC7(res, *rid);

	if (flags & RF_ACTIVE) {
		error = FUNC0(child, SYS_RES_MEMORY, *rid, res);
		if (error != 0) {
			FUNC4(&dinfo->resources, SYS_RES_MEMORY,
			    *rid);
			FUNC5(res);
			return (NULL);
		}
	}
	rle->res = res;

	return (res);
}