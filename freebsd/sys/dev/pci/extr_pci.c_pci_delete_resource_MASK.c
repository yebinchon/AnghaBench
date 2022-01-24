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
struct resource_list_entry {scalar_t__ res; } ;
struct resource_list {int dummy; } ;
struct pci_devinfo {struct resource_list resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct resource_list*,int,int) ; 
 struct resource_list_entry* FUNC5 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void
FUNC9(device_t dev, device_t child, int type, int rid)
{
	struct pci_devinfo *dinfo;
	struct resource_list *rl;
	struct resource_list_entry *rle;

	if (FUNC1(child) != dev)
		return;

	dinfo = FUNC0(child);
	rl = &dinfo->resources;
	rle = FUNC5(rl, type, rid);
	if (rle == NULL)
		return;

	if (rle->res) {
		if (FUNC7(rle->res) & RF_ACTIVE ||
		    FUNC3(rl, type, rid)) {
			FUNC2(dev, "delete_resource: "
			    "Resource still owned by child, oops. "
			    "(type=%d, rid=%d, addr=%jx)\n",
			    type, rid, FUNC8(rle->res));
			return;
		}
		FUNC6(rl, dev, child, type, rid);
	}
	FUNC4(rl, type, rid);
}