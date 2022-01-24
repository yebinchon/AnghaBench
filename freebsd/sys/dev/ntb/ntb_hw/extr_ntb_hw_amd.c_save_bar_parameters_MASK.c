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
struct amd_ntb_pci_bar_info {int /*<<< orphan*/  map_mode; int /*<<< orphan*/  pci_resource; int /*<<< orphan*/  vbase; int /*<<< orphan*/  size; int /*<<< orphan*/  pbase; int /*<<< orphan*/  pci_bus_handle; int /*<<< orphan*/  pci_bus_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct amd_ntb_pci_bar_info *bar)
{
	bar->pci_bus_tag = FUNC1(bar->pci_resource);
	bar->pci_bus_handle = FUNC0(bar->pci_resource);
	bar->pbase = FUNC3(bar->pci_resource);
	bar->size = FUNC2(bar->pci_resource);
	bar->vbase = FUNC4(bar->pci_resource);
	bar->map_mode = VM_MEMATTR_UNCACHEABLE;
}