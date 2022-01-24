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
struct ata_pci_controller {int /*<<< orphan*/  r_res1; } ;
struct ata_channel {scalar_t__ unit; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
    struct ata_pci_controller *ctlr = FUNC3(FUNC2(dev));
    struct ata_channel *ch = FUNC3(dev);

    if (FUNC0(ctlr->r_res1, 0x1c) & (ch->unit ? 0x00004000 : 0x00000400)) {
	return FUNC1(dev);
    }
    return 0;
}