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
struct ata_pci_controller {int /*<<< orphan*/  setmode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ata_cypress_setmode ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC1(dev);

    if (FUNC0(dev, ata_generic_intr))
	return ENXIO;

    ctlr->setmode = ata_cypress_setmode;
    return 0;
}