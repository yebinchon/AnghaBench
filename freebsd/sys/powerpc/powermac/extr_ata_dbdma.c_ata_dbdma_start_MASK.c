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
struct ata_request {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;
struct ata_dbdma_channel {int /*<<< orphan*/  dbdma; TYPE_2__ sc_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ata_dbdma_channel* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ata_request *request)
{
	struct ata_dbdma_channel *sc = FUNC1(request->parent);

	sc->sc_ch.dma.flags |= ATA_DMA_ACTIVE;
	FUNC0(sc->dbdma);
	return 0;
}