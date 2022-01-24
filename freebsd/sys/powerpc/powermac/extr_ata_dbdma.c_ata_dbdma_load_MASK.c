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
struct ata_request {int flags; int bytecount; TYPE_1__* dma; int /*<<< orphan*/  dev; scalar_t__ data; int /*<<< orphan*/  parent; } ;
struct ata_dbdma_dmaload_args {int write; int nsegs; void* sc; } ;
struct TYPE_4__ {int alignment; int max_iosize; int /*<<< orphan*/  (* unload ) (struct ata_request*) ;TYPE_1__* slot; } ;
struct ata_channel {TYPE_2__ dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_map; int /*<<< orphan*/  data_tag; int /*<<< orphan*/  sg_map; int /*<<< orphan*/  sg_tag; } ;

/* Variables and functions */
 int ATA_R_READ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EIO ; 
 int /*<<< orphan*/  ata_dbdma_setprd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,struct ata_dbdma_dmaload_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_request*) ; 

__attribute__((used)) static int
FUNC5(struct ata_request *request, void *addr, int *entries)
{
	struct ata_channel *ch = FUNC2(request->parent);
	struct ata_dbdma_dmaload_args args;

	int error;

	args.sc = FUNC2(request->parent);
	args.write = !(request->flags & ATA_R_READ);

	if (!request->bytecount) {
		FUNC3(request->dev,
		    "FAILURE - zero length DMA transfer attempted\n");
		return EIO;
	}
	if (((uintptr_t)(request->data) & (ch->dma.alignment - 1)) ||
	    (request->bytecount & (ch->dma.alignment - 1))) {
		FUNC3(request->dev,
		    "FAILURE - non aligned DMA transfer attempted\n");
		return EIO;
	}
	if (request->bytecount > ch->dma.max_iosize) {
		FUNC3(request->dev,
		    "FAILURE - oversized DMA transfer attempt %d > %d\n",
		    request->bytecount, ch->dma.max_iosize);
		return EIO;
	}

	request->dma = &ch->dma.slot[0];

	if ((error = FUNC0(request->dma->data_tag, 
	    request->dma->data_map, request->data, request->bytecount,
	    &ata_dbdma_setprd, &args, BUS_DMA_NOWAIT))) {
		FUNC3(request->dev, "FAILURE - load data\n");
		goto error;
	}

	if (entries)
		*entries = args.nsegs;

	FUNC1(request->dma->sg_tag, request->dma->sg_map,
	    BUS_DMASYNC_PREWRITE);
	FUNC1(request->dma->data_tag, request->dma->data_map,
	    (request->flags & ATA_R_READ) ?
	    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);

	return 0;

error:
	ch->dma.unload(request);
	return EIO;
}