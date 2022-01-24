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
typedef  int u_int8_t ;
struct ata_pci_controller {TYPE_1__* chip; } ;
struct ata_channel {scalar_t__ unit; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;

/* Variables and functions */
 int ATA_UDMA2 ; 
 scalar_t__ HPT_374 ; 
 scalar_t__ ata_dma_check_80pin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int mode)
{
    device_t parent = FUNC1(dev);
    struct ata_pci_controller *ctlr = FUNC2(parent);
    struct ata_channel *ch = FUNC2(dev);
    u_int8_t reg, val, res;

    if (ctlr->chip->cfg1 == HPT_374 && FUNC3(parent) == 1) {
	reg = ch->unit ? 0x57 : 0x53;
	val = FUNC4(parent, reg, 1);
	FUNC5(parent, reg, val | 0x80, 1);
    }
    else {
	reg = 0x5b;
	val = FUNC4(parent, reg, 1);
	FUNC5(parent, reg, val & 0xfe, 1);
    }
    res = FUNC4(parent, 0x5a, 1) & (ch->unit ? 0x1:0x2);
    FUNC5(parent, reg, val, 1);

    if (ata_dma_check_80pin && mode > ATA_UDMA2 && res) {
	FUNC0(dev, "controller");
	mode = ATA_UDMA2;
    }
    return mode;
}