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
struct ntb_softc {int /*<<< orphan*/  device; } ;
struct ntb_pci_bar_info {int /*<<< orphan*/  map_mode; int /*<<< orphan*/ * pci_resource; int /*<<< orphan*/  pci_resource_id; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*,struct ntb_pci_bar_info*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_pci_bar_info*) ; 

__attribute__((used)) static int
FUNC3(struct ntb_softc *ntb, struct ntb_pci_bar_info *bar)
{

	bar->pci_resource = FUNC0(ntb->device, SYS_RES_MEMORY,
	    &bar->pci_resource_id, RF_ACTIVE);
	if (bar->pci_resource == NULL)
		return (ENXIO);

	FUNC2(bar);
	bar->map_mode = VM_MEMATTR_UNCACHEABLE;
	FUNC1(ntb, bar, "mmr");
	return (0);
}