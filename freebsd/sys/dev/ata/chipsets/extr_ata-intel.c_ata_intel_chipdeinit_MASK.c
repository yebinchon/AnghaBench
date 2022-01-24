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
struct ata_pci_controller {struct ata_intel_data* chipset_data; } ;
struct ata_intel_data {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_ATAPCI ; 
 struct ata_pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_intel_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ata_pci_controller *ctlr = FUNC0(dev);
	struct ata_intel_data *data;

	data = ctlr->chipset_data;
	FUNC2(&data->lock);
	FUNC1(data, M_ATAPCI);
	ctlr->chipset_data = NULL;
	return (0);
}