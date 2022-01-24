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
struct ata_request {int flags; TYPE_1__* dma; int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ata_channel {TYPE_2__ dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  sg_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_BMCMD_PORT ; 
 int ATA_BMCMD_START_STOP ; 
 int ATA_BMCMD_WRITE_READ ; 
 int /*<<< orphan*/  ATA_BMDTP_PORT ; 
 int ATA_BMSTAT_ERROR ; 
 int ATA_BMSTAT_INTERRUPT ; 
 int /*<<< orphan*/  ATA_BMSTAT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct ata_request*,char*) ; 
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int FUNC1 (struct ata_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ATA_R_READ ; 
 struct ata_channel* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ata_request *request)
{
    struct ata_channel *ch = FUNC4(request->parent);

    FUNC0(request, "dmastart");

    FUNC2(ch, ATA_BMSTAT_PORT, (FUNC1(ch, ATA_BMSTAT_PORT) | 
		 (ATA_BMSTAT_INTERRUPT | ATA_BMSTAT_ERROR)));
    FUNC3(ch, ATA_BMDTP_PORT, request->dma->sg_bus);
    ch->dma.flags |= ATA_DMA_ACTIVE;
    FUNC2(ch, ATA_BMCMD_PORT,
		 (FUNC1(ch, ATA_BMCMD_PORT) & ~ATA_BMCMD_WRITE_READ) |
		 ((request->flags & ATA_R_READ) ? ATA_BMCMD_WRITE_READ : 0)|
		 ATA_BMCMD_START_STOP);
    return 0;
}