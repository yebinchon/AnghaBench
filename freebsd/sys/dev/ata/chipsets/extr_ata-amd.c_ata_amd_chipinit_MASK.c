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
struct ata_pci_controller {int /*<<< orphan*/  setmode; int /*<<< orphan*/  ch_attach; TYPE_1__* chip; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int cfg1; } ;

/* Variables and functions */
 int AMD_BUG ; 
 int ENXIO ; 
 int /*<<< orphan*/  ata_amd_ch_attach ; 
 int /*<<< orphan*/  ata_amd_setmode ; 
 int /*<<< orphan*/  ata_generic_intr ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC1(dev);

    if (FUNC0(dev, ata_generic_intr))
	return ENXIO;

    /* disable/set prefetch, postwrite */
    if (ctlr->chip->cfg1 & AMD_BUG)
	FUNC3(dev, 0x41, FUNC2(dev, 0x41, 1) & 0x0f, 1);
    else
	FUNC3(dev, 0x41, FUNC2(dev, 0x41, 1) | 0xf0, 1);

    ctlr->ch_attach = ata_amd_ch_attach;
    ctlr->setmode = ata_amd_setmode;
    return 0;
}