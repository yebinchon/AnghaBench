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
struct ofw_pci_cell_info {int host_address_cells; int size_cells; int pci_address_cell; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(phandle_t node, struct ofw_pci_cell_info *info)
{
	ssize_t nbase_ranges;

	if (info == NULL)
		return (-1);

	info->host_address_cells = 1;
	info->size_cells = 2;
	info->pci_address_cell = 3;

	FUNC0(FUNC2(node), "#address-cells",
	    &(info->host_address_cells), sizeof(info->host_address_cells));
	FUNC0(node, "#address-cells",
	    &(info->pci_address_cell), sizeof(info->pci_address_cell));
	FUNC0(node, "#size-cells", &(info->size_cells),
	    sizeof(info->size_cells));

	nbase_ranges = FUNC1(node, "ranges");
	if (nbase_ranges <= 0)
		return (-1);

	return (nbase_ranges / sizeof(cell_t) /
	    (info->pci_address_cell + info->host_address_cells +
	    info->size_cells));
}