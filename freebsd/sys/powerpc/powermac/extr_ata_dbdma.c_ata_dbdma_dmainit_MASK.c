#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int segsize; int /*<<< orphan*/  reset; int /*<<< orphan*/  load; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; } ;
struct TYPE_6__ {TYPE_2__ hw; TYPE_1__ dma; } ;
struct ata_dbdma_channel {int next_dma_slot; int /*<<< orphan*/  dbdma_mtx; TYPE_3__ sc_ch; int /*<<< orphan*/  dbdma; int /*<<< orphan*/  dbdma_offset; int /*<<< orphan*/  dbdma_regs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DEV_BSIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  ata_dbdma_load ; 
 int /*<<< orphan*/  ata_dbdma_reset ; 
 int /*<<< orphan*/  ata_dbdma_start ; 
 int /*<<< orphan*/  ata_dbdma_status ; 
 int /*<<< orphan*/  ata_dbdma_stop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 struct ata_dbdma_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(device_t dev)
{
	struct ata_dbdma_channel *sc = FUNC5(dev);
	int error;

	error = FUNC2(sc->dbdma_regs, sc->dbdma_offset,
	    FUNC1(dev), 256, &sc->dbdma);

	FUNC4(sc->dbdma,1 << 7, 1 << 7);

	FUNC3(sc->dbdma,0);
	sc->next_dma_slot=1;

	sc->sc_ch.dma.start = ata_dbdma_start;
	sc->sc_ch.dma.stop = ata_dbdma_stop;
	sc->sc_ch.dma.load = ata_dbdma_load;
	sc->sc_ch.dma.reset = ata_dbdma_reset;

	/*
	 * DBDMA's field for transfer size is 16 bits. This will overflow
	 * if we try to do a 64K transfer, so stop short of 64K.
	 */
	sc->sc_ch.dma.segsize = 126 * DEV_BSIZE;
	FUNC0(dev);

	sc->sc_ch.hw.status = ata_dbdma_status;

	FUNC6(&sc->dbdma_mtx, "ATA DBDMA", NULL, MTX_DEF);
}