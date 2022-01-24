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
struct ata_pci_controller {struct ali_sata_resources* chipset_data; TYPE_1__* chip; } ;
struct ali_sata_resources {int /*<<< orphan*/ ** bars; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg2; } ;

/* Variables and functions */
 scalar_t__ ALI_SATA ; 
 int /*<<< orphan*/  M_ATAPCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ata_pci_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ali_sata_resources*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ata_pci_controller *ctlr = FUNC2(dev);
	struct ali_sata_resources *res;
	int i;

	if (ctlr->chip->cfg2 == ALI_SATA) {
		res = ctlr->chipset_data;
		for (i = 0; i < 4; i++) {
			if (res->bars[i] != NULL) {
				FUNC1(dev, SYS_RES_IOPORT,
				    FUNC0(i), res->bars[i]);
			}
		}
		FUNC3(res, M_ATAPCI);
		ctlr->chipset_data = NULL;
	}
	return (0);
}