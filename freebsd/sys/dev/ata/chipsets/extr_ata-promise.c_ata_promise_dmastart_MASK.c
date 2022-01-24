#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ata_request {int flags; int bytecount; TYPE_1__* dma; int /*<<< orphan*/  parent; } ;
struct ata_pci_controller {int /*<<< orphan*/  r_res1; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ata_channel {TYPE_2__ dma; scalar_t__ unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  sg_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_BMCMD_PORT ; 
 int ATA_BMCMD_START_STOP ; 
 int ATA_BMCMD_WRITE_READ ; 
 int /*<<< orphan*/  ATA_BMDTP_PORT ; 
 int ATA_BMSTAT_ERROR ; 
 int ATA_BMSTAT_INTERRUPT ; 
 int /*<<< orphan*/  ATA_BMSTAT_PORT ; 
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int FUNC0 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int ATA_R_48BIT ; 
 int ATA_R_READ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ata_request *request)
{
    struct ata_pci_controller *ctlr=FUNC7(FUNC6(request->parent));
    struct ata_channel *ch = FUNC7(request->parent);

    if (request->flags & ATA_R_48BIT) {
	FUNC4(ctlr->r_res1, 0x11,
		 FUNC3(ctlr->r_res1, 0x11) | (ch->unit ? 0x08 : 0x02));
	FUNC5(ctlr->r_res1, ch->unit ? 0x24 : 0x20,
		 ((request->flags & ATA_R_READ) ? 0x05000000 : 0x06000000) |
		 (request->bytecount >> 1));
    }
    FUNC1(ch, ATA_BMSTAT_PORT, (FUNC0(ch, ATA_BMSTAT_PORT) |
		 (ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR)));
    FUNC2(ch, ATA_BMDTP_PORT, request->dma->sg_bus);
    FUNC1(ch, ATA_BMCMD_PORT,
		 ((request->flags & ATA_R_READ) ? ATA_BMCMD_WRITE_READ : 0) |
		 ATA_BMCMD_START_STOP);
    ch->dma.flags |= ATA_DMA_ACTIVE;
    return 0;
}