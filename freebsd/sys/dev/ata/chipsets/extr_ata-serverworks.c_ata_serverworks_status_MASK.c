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
struct ata_pci_controller {int /*<<< orphan*/  r_res2; } ;
struct ata_channel {int unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATA_STATUS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    struct ata_channel *ch = FUNC4(dev);
    struct ata_pci_controller *ctlr = FUNC4(FUNC3(dev));

    /*
     * Check if this interrupt belongs to our channel.
     */
    if (!(FUNC1(ctlr->r_res2, 0x1f80) & (1 << ch->unit)))
	return (0);

    /*
     * We need to do a 4-byte read on the status reg before the values
     * will report correctly
     */

    FUNC0(ch,ATA_STATUS);

    return FUNC2(dev);
}