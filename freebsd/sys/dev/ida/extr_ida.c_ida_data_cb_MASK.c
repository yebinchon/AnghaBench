#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ida_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qcb_queue; int /*<<< orphan*/  hwqcb_dmamap; int /*<<< orphan*/  hwqcb_dmat; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  lock; } ;
struct ida_sgb {int dummy; } ;
struct ida_req {int dummy; } ;
struct ida_qcb {int error; int flags; int /*<<< orphan*/  dmamap; struct ida_hardware_qcb* hwqcb; struct ida_softc* ida; } ;
struct TYPE_9__ {int sgcount; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct ida_hardware_qcb {TYPE_3__ req; TYPE_2__* seg; TYPE_1__ hdr; } ;
typedef  int bus_dmasync_op_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_4__ bus_dma_segment_t ;
struct TYPE_11__ {int /*<<< orphan*/  stqe; } ;
struct TYPE_8__ {void* length; void* addr; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
#define  DMA_DATA_IN 129 
 int const DMA_DATA_OUT ; 
#define  DMA_DATA_TRANSFER 128 
 int IDA_NSEG ; 
 int /*<<< orphan*/  IDA_QFROZEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ida_qcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ida_softc*,struct ida_qcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ida_softc*) ; 
 TYPE_5__ link ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
	struct ida_hardware_qcb *hwqcb;
	struct ida_softc *ida;
	struct ida_qcb *qcb;
	bus_dmasync_op_t op;
	int i;

	qcb = arg;
	ida = qcb->ida;
	if (!dumping)
		FUNC7(&ida->lock, MA_OWNED);
	if (error) {
		qcb->error = error;
		FUNC5(ida, qcb);
		return;
	}

	hwqcb = qcb->hwqcb;
	hwqcb->hdr.size = FUNC3((sizeof(struct ida_req) +
	    sizeof(struct ida_sgb) * IDA_NSEG) >> 2);

	for (i = 0; i < nsegments; i++) {
		hwqcb->seg[i].addr = FUNC4(segs[i].ds_addr);
		hwqcb->seg[i].length = FUNC4(segs[i].ds_len);
	}
	hwqcb->req.sgcount = nsegments;
	if (qcb->flags & DMA_DATA_TRANSFER) {
		switch (qcb->flags & DMA_DATA_TRANSFER) {
		case DMA_DATA_TRANSFER:
			op = BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE;
			break;
		case DMA_DATA_IN:
			op = BUS_DMASYNC_PREREAD;
			break;
		default:
			FUNC0((qcb->flags & DMA_DATA_TRANSFER) ==
			    DMA_DATA_OUT, ("bad DMA data flags"));
			op = BUS_DMASYNC_PREWRITE;
			break;
		}
		FUNC2(ida->buffer_dmat, qcb->dmamap, op);
	}
	FUNC2(ida->hwqcb_dmat, ida->hwqcb_dmamap,
	    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);

	FUNC1(&ida->qcb_queue, qcb, link.stqe);
	FUNC6(ida);
	ida->flags &= ~IDA_QFROZEN;
}