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
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct snd_queue {int idx; int /*<<< orphan*/  snd_taskq; int /*<<< orphan*/  snd_task; TYPE_2__* snd_buff; int /*<<< orphan*/  snd_buff_dmat; struct nicvf* nic; int /*<<< orphan*/  thresh; int /*<<< orphan*/  free_cnt; scalar_t__ tail; scalar_t__ head; TYPE_1__ dmem; int /*<<< orphan*/  desc; int /*<<< orphan*/ * br; int /*<<< orphan*/  mtx; int /*<<< orphan*/  mtx_name; } ;
struct nicvf {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int MIN_SQ_DESC_PER_PKT_XMIT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NICVF ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NICVF_SQ_BASE_ALIGN_BYTES ; 
 int /*<<< orphan*/  NICVF_TSO_MAXSIZE ; 
 int /*<<< orphan*/  NICVF_TSO_NSEGS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_queue*) ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  SND_QUEUE_DESC_SIZE ; 
 int /*<<< orphan*/  SND_QUEUE_THRESH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct nicvf*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nicvf_snd_task ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC16(struct nicvf *nic, struct snd_queue *sq, int q_len,
    int qidx)
{
	size_t i;
	int err;

	/* Initizalize TX lock for this queue */
	FUNC13(sq->mtx_name, sizeof(sq->mtx_name), "%s: SQ(%d) lock",
	    FUNC8(nic->dev), qidx);
	FUNC11(&sq->mtx, sq->mtx_name, NULL, MTX_DEF);

	FUNC0(sq);
	/* Allocate buffer ring */
	sq->br = FUNC4(q_len / MIN_SQ_DESC_PER_PKT_XMIT, M_DEVBUF,
	    M_NOWAIT, &sq->mtx);
	if (sq->br == NULL) {
		FUNC9(nic->dev,
		    "ERROR: Could not set up buf ring for SQ(%d)\n", qidx);
		err = ENOMEM;
		goto error;
	}

	/* Allocate DMA memory for Tx descriptors */
	err = FUNC12(nic, &sq->dmem, q_len, SND_QUEUE_DESC_SIZE,
				     NICVF_SQ_BASE_ALIGN_BYTES);
	if (err != 0) {
		FUNC9(nic->dev,
		    "Could not allocate DMA memory for SQ\n");
		goto error;
	}

	sq->desc = sq->dmem.base;
	sq->head = sq->tail = 0;
	FUNC3(&sq->free_cnt, q_len - 1);
	sq->thresh = SND_QUEUE_THRESH;
	sq->idx = qidx;
	sq->nic = nic;

	/*
	 * Allocate DMA maps for Tx buffers
	 */

	/* Create DMA tag first */
	err = FUNC5(
	    FUNC7(nic->dev),		/* parent tag */
	    1,					/* alignment */
	    0,					/* boundary */
	    BUS_SPACE_MAXADDR,			/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filtfunc, filtfuncarg */
	    NICVF_TSO_MAXSIZE,			/* maxsize */
	    NICVF_TSO_NSEGS,			/* nsegments */
	    MCLBYTES,				/* maxsegsize */
	    0,					/* flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    &sq->snd_buff_dmat);		/* dmat */

	if (err != 0) {
		FUNC9(nic->dev,
		    "Failed to create busdma tag for Tx buffers\n");
		goto error;
	}

	/* Allocate send buffers array */
	sq->snd_buff = FUNC10(sizeof(*sq->snd_buff) * q_len, M_NICVF,
	    (M_NOWAIT | M_ZERO));
	if (sq->snd_buff == NULL) {
		FUNC9(nic->dev,
		    "Could not allocate memory for Tx buffers array\n");
		err = ENOMEM;
		goto error;
	}

	/* Now populate maps */
	for (i = 0; i < q_len; i++) {
		err = FUNC6(sq->snd_buff_dmat, 0,
		    &sq->snd_buff[i].dmap);
		if (err != 0) {
			FUNC9(nic->dev,
			    "Failed to create DMA maps for Tx buffers\n");
			goto error;
		}
	}
	FUNC1(sq);

	/* Allocate taskqueue */
	FUNC2(&sq->snd_task, 0, nicvf_snd_task, sq);
	sq->snd_taskq = FUNC14("nicvf_snd_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &sq->snd_taskq);
	FUNC15(&sq->snd_taskq, 1, PI_NET, "%s: snd_taskq(%d)",
	    FUNC8(nic->dev), qidx);

	return (0);
error:
	FUNC1(sq);
	return (err);
}