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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {TYPE_2__ dma; } ;
struct ata_dbdma_channel {int next_dma_slot; int /*<<< orphan*/  dbdma_mtx; TYPE_1__ sc_ch; int /*<<< orphan*/  dbdma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ata_dbdma_channel* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct ata_dbdma_channel *sc = FUNC3(dev);

	FUNC4(&sc->dbdma_mtx);

	FUNC2(sc->dbdma);
	FUNC0(sc->dbdma, 0);
	sc->next_dma_slot=1;
	FUNC1(sc->dbdma, 0);

	sc->sc_ch.dma.flags &= ~ATA_DMA_ACTIVE;

	FUNC5(&sc->dbdma_mtx);
}