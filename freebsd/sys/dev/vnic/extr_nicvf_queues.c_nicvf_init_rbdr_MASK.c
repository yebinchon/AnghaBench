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
struct rbdr_entry_t {int buf_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct rbdr {int idx; int /*<<< orphan*/  rbdr_taskq; int /*<<< orphan*/  rbdr_task_nowait; int /*<<< orphan*/  rbdr_task; int /*<<< orphan*/ * rbdr_buff_dmaps; int /*<<< orphan*/  rbdr_buff_dmat; struct nicvf* nic; int /*<<< orphan*/  thresh; int /*<<< orphan*/  enable; scalar_t__ dma_size; TYPE_1__ dmem; int /*<<< orphan*/  desc; } ;
struct nicvf {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMAP_MAX_PHYSADDR ; 
 int /*<<< orphan*/  DMAP_MIN_PHYSADDR ; 
 int /*<<< orphan*/  DMA_BUFFER_LEN ; 
 int EINVAL ; 
 struct rbdr_entry_t* FUNC0 (struct rbdr*,int) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  M_NICVF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NICVF_RCV_BUF_ALIGN ; 
 scalar_t__ NICVF_RCV_BUF_ALIGN_BYTES ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  RBDR_THRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rbdr*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct nicvf*,TYPE_1__*,int,int,scalar_t__) ; 
 int FUNC9 (struct nicvf*,struct rbdr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  nicvf_rbdr_task ; 
 int /*<<< orphan*/  nicvf_rbdr_task_nowait ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC13(struct nicvf *nic, struct rbdr *rbdr, int ring_len,
    int buf_size, int qidx)
{
	bus_dmamap_t dmap;
	bus_addr_t rbuf;
	struct rbdr_entry_t *desc;
	int idx;
	int err;

	/* Allocate rbdr descriptors ring */
	err = FUNC8(nic, &rbdr->dmem, ring_len,
	    sizeof(struct rbdr_entry_t), NICVF_RCV_BUF_ALIGN_BYTES);
	if (err != 0) {
		FUNC6(nic->dev,
		    "Failed to create RBDR descriptors ring\n");
		return (err);
	}

	rbdr->desc = rbdr->dmem.base;
	/*
	 * Buffer size has to be in multiples of 128 bytes.
	 * Make room for metadata of size of one line (128 bytes).
	 */
	rbdr->dma_size = buf_size - NICVF_RCV_BUF_ALIGN_BYTES;
	rbdr->enable = TRUE;
	rbdr->thresh = RBDR_THRESH;
	rbdr->nic = nic;
	rbdr->idx = qidx;

	/*
	 * Create DMA tag for Rx buffers.
	 * Each map created using this tag is intended to store Rx payload for
	 * one fragment and one header structure containing rbuf_info (thus
	 * additional 128 byte line since RB must be a multiple of 128 byte
	 * cache line).
	 */
	if (buf_size > MCLBYTES) {
		FUNC6(nic->dev,
		    "Buffer size to large for mbuf cluster\n");
		return (EINVAL);
	}
	err = FUNC2(
	    FUNC4(nic->dev),		/* parent tag */
	    NICVF_RCV_BUF_ALIGN_BYTES,		/* alignment */
	    0,					/* boundary */
	    DMAP_MAX_PHYSADDR,			/* lowaddr */
	    DMAP_MIN_PHYSADDR,			/* highaddr */
	    NULL, NULL,				/* filtfunc, filtfuncarg */
	    FUNC10(buf_size, MCLBYTES),	/* maxsize */
	    1,					/* nsegments */
	    FUNC10(buf_size, MCLBYTES),	/* maxsegsize */
	    0,					/* flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    &rbdr->rbdr_buff_dmat);		/* dmat */

	if (err != 0) {
		FUNC6(nic->dev,
		    "Failed to create busdma tag for RBDR buffers\n");
		return (err);
	}

	rbdr->rbdr_buff_dmaps = FUNC7(sizeof(*rbdr->rbdr_buff_dmaps) *
	    ring_len, M_NICVF, (M_WAITOK | M_ZERO));

	for (idx = 0; idx < ring_len; idx++) {
		err = FUNC3(rbdr->rbdr_buff_dmat, 0, &dmap);
		if (err != 0) {
			FUNC6(nic->dev,
			    "Failed to create DMA map for RB\n");
			return (err);
		}
		rbdr->rbdr_buff_dmaps[idx] = dmap;

		err = FUNC9(nic, rbdr, dmap, M_WAITOK,
		    DMA_BUFFER_LEN, &rbuf);
		if (err != 0)
			return (err);

		desc = FUNC0(rbdr, idx);
		desc->buf_addr = (rbuf >> NICVF_RCV_BUF_ALIGN);
	}

	/* Allocate taskqueue */
	FUNC1(&rbdr->rbdr_task, 0, nicvf_rbdr_task, rbdr);
	FUNC1(&rbdr->rbdr_task_nowait, 0, nicvf_rbdr_task_nowait, rbdr);
	rbdr->rbdr_taskq = FUNC11("nicvf_rbdr_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &rbdr->rbdr_taskq);
	FUNC12(&rbdr->rbdr_taskq, 1, PI_NET, "%s: rbdr_taskq",
	    FUNC5(nic->dev));

	return (0);
}