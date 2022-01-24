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
struct ata_request {int bytecount; int flags; TYPE_2__* dma; int /*<<< orphan*/  parent; int /*<<< orphan*/  data; int /*<<< orphan*/  ccb; } ;
struct ata_dmasetprd_args {int error; int nsegs; void* dmatab; } ;
struct TYPE_3__ {int alignment; int max_iosize; int /*<<< orphan*/  setprd; TYPE_2__* slot; } ;
struct ata_channel {TYPE_1__ dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_map; int /*<<< orphan*/  data_tag; int /*<<< orphan*/  sg_map; int /*<<< orphan*/  sg_tag; void* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_request*,char*) ; 
 int ATA_R_DATA_IN_CCB ; 
 int ATA_R_READ ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct ata_request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ata_dmasetprd_args*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ata_dmasetprd_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ata_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC7(struct ata_request *request, void *addr, int *entries)
{
    struct ata_channel *ch = FUNC5(request->parent);
    struct ata_dmasetprd_args dspa;
    int error;

    FUNC0(request, "dmaload");

    if (request->dma) {
	FUNC6(request->parent,
		      "FAILURE - already active DMA on this device\n");
	return EIO;
    }
    if (!request->bytecount) {
	FUNC6(request->parent,
		      "FAILURE - zero length DMA transfer attempted\n");
	return EIO;
    }
    if (request->bytecount & (ch->dma.alignment - 1)) {
	FUNC6(request->parent,
		      "FAILURE - odd-sized DMA transfer attempt %d %% %d\n",
		      request->bytecount, ch->dma.alignment);
	return EIO;
    }
    if (request->bytecount > ch->dma.max_iosize) {
	FUNC6(request->parent,
		      "FAILURE - oversized DMA transfer attempt %d > %d\n",
		      request->bytecount, ch->dma.max_iosize);
	return EIO;
    }

    /* set our slot. XXX SOS NCQ will change that */
    request->dma = &ch->dma.slot[0];

    if (addr)
	dspa.dmatab = addr;
    else
	dspa.dmatab = request->dma->sg;

    if (request->flags & ATA_R_DATA_IN_CCB)
        error = FUNC3(request->dma->data_tag,
				request->dma->data_map, request->ccb,
				ch->dma.setprd, &dspa, BUS_DMA_NOWAIT);
    else
        error = FUNC2(request->dma->data_tag, request->dma->data_map,
				request->data, request->bytecount,
				ch->dma.setprd, &dspa, BUS_DMA_NOWAIT);
    if (error || (error = dspa.error)) {
	FUNC6(request->parent, "FAILURE - load data\n");
	goto error;
    }

    if (entries)
	*entries = dspa.nsegs;

    FUNC4(request->dma->sg_tag, request->dma->sg_map,
		    BUS_DMASYNC_PREWRITE);
    FUNC4(request->dma->data_tag, request->dma->data_map,
		    (request->flags & ATA_R_READ) ?
		    BUS_DMASYNC_PREREAD : BUS_DMASYNC_PREWRITE);
    return 0;

error:
    FUNC1(request);
    return EIO;
}