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
struct ata_request {int flags; int /*<<< orphan*/  parent; } ;
struct ata_pci_controller {int /*<<< orphan*/  r_res1; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct ata_channel {TYPE_1__ dma; scalar_t__ unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_BMCMD_PORT ; 
 int ATA_BMCMD_START_STOP ; 
 int ATA_BMSTAT_ERROR ; 
 int ATA_BMSTAT_INTERRUPT ; 
 int /*<<< orphan*/  ATA_BMSTAT_PORT ; 
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ATA_R_48BIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ata_request *request)
{
    struct ata_pci_controller *ctlr=FUNC6(FUNC5(request->parent));
    struct ata_channel *ch = FUNC6(request->parent);
    int error;

    if (request->flags & ATA_R_48BIT) {
	FUNC3(ctlr->r_res1, 0x11,
		 FUNC2(ctlr->r_res1, 0x11) & ~(ch->unit ? 0x08 : 0x02));
	FUNC4(ctlr->r_res1, ch->unit ? 0x24 : 0x20, 0);
    }
    error = FUNC0(ch, ATA_BMSTAT_PORT);
    FUNC1(ch, ATA_BMCMD_PORT,
		 FUNC0(ch, ATA_BMCMD_PORT) & ~ATA_BMCMD_START_STOP);
    FUNC1(ch, ATA_BMSTAT_PORT, ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR); 
    ch->dma.flags &= ~ATA_DMA_ACTIVE;
    return error;
}