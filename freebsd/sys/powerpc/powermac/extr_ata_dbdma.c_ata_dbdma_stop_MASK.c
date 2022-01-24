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
typedef  int uint16_t ;
struct ata_request {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;
struct ata_dbdma_channel {TYPE_2__ sc_ch; int /*<<< orphan*/  dbdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int ATA_S_ERROR ; 
 int DBDMA_STATUS_ACTIVE ; 
 int DBDMA_STATUS_DEAD ; 
 int DBDMA_STATUS_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ata_dbdma_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct ata_request *request)
{
	struct ata_dbdma_channel *sc = FUNC3(request->parent);

	uint16_t status;
	
	status = FUNC1(sc->dbdma);

	FUNC2(sc->dbdma);
	sc->sc_ch.dma.flags &= ~ATA_DMA_ACTIVE;

	if (status & DBDMA_STATUS_DEAD) {
		FUNC4(request->parent,"DBDMA dead, resetting "
		    "channel...\n");
		FUNC0(request->parent);
		return ATA_S_ERROR;
	}

	if (!(status & DBDMA_STATUS_RUN)) {
		FUNC4(request->parent,"DBDMA confused, stop called "
		    "when channel is not running!\n");
		return ATA_S_ERROR;
	}

	if (status & DBDMA_STATUS_ACTIVE) {
		FUNC4(request->parent,"DBDMA channel stopped "
		    "prematurely\n");
		return ATA_S_ERROR;
	}
	return 0;
}