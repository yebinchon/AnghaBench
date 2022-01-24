#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_xferq {int flag; int bnchunk; int bnpacket; int psize; TYPE_1__* bulkxfer; int /*<<< orphan*/  stfree; int /*<<< orphan*/ * stproc; int /*<<< orphan*/  stdma; int /*<<< orphan*/  stvalid; scalar_t__ queued; int /*<<< orphan*/ * buf; } ;
struct fw_bulkxfer {int dummy; } ;
struct fw_bufspec {int nchunk; int psize; int npacket; } ;
struct firewire_comm {int dummy; } ;
struct TYPE_4__ {int poffset; int /*<<< orphan*/ * mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FWXFERQ_EXTBUF ; 
 int FWXFERQ_MODEMASK ; 
 int FWXFERQ_RUNNING ; 
 int FWXFERQ_STREAM ; 
 int /*<<< orphan*/  M_FW ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct firewire_comm*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static int
FUNC6(struct firewire_comm *fc, struct fw_xferq *q,
	struct fw_bufspec *b)
{
	int i;

	if (q->flag & (FWXFERQ_RUNNING | FWXFERQ_EXTBUF))
		return (EBUSY);

	q->bulkxfer = FUNC4(sizeof(struct fw_bulkxfer) * b->nchunk,
	    M_FW, M_WAITOK);

	b->psize = FUNC5(b->psize, sizeof(uint32_t));
	q->buf = FUNC3(fc, sizeof(uint32_t),
	    b->psize, b->nchunk * b->npacket, BUS_DMA_WAITOK);

	if (q->buf == NULL) {
		FUNC2(q->bulkxfer, M_FW);
		q->bulkxfer = NULL;
		return (ENOMEM);
	}
	q->bnchunk = b->nchunk;
	q->bnpacket = b->npacket;
	q->psize = (b->psize + 3) & ~3;
	q->queued = 0;

	FUNC0(&q->stvalid);
	FUNC0(&q->stfree);
	FUNC0(&q->stdma);
	q->stproc = NULL;

	for (i = 0; i < q->bnchunk; i++) {
		q->bulkxfer[i].poffset = i * q->bnpacket;
		q->bulkxfer[i].mbuf = NULL;
		FUNC1(&q->stfree, &q->bulkxfer[i], link);
	}

	q->flag &= ~FWXFERQ_MODEMASK;
	q->flag |= FWXFERQ_STREAM;
	q->flag |= FWXFERQ_EXTBUF;

	return (0);
}