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
typedef  int uint32_t ;
struct ata_pci_controller {int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int unit; scalar_t__ devices; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC5(FUNC4(dev));
    struct ata_channel *ch = FUNC5(dev);
    int offset = ((ch->unit & 1) << 7) + ((ch->unit & 2) << 8);
    uint32_t val;

    /* Apply R_ERR on DMA activate FIS errata workaround. */
    val = FUNC0(ctlr->r_res2, 0x14c + offset);
    if ((val & 0x3) == 0x1)
	FUNC1(ctlr->r_res2, 0x14c + offset, val & ~0x3);

    if (FUNC3(dev, -1, 1))
	FUNC2(dev);
    else
	ch->devices = 0;
}