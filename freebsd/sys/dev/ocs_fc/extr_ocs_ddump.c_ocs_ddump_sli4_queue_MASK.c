#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ is_mq; scalar_t__ is_hdr; scalar_t__ rq_batch; } ;
struct TYPE_11__ {scalar_t__ r_idx; TYPE_1__ flag; } ;
struct TYPE_10__ {scalar_t__ virt; scalar_t__ phys; } ;
struct TYPE_12__ {scalar_t__ index; scalar_t__ size; scalar_t__ length; scalar_t__ n_posted; scalar_t__ id; scalar_t__ type; scalar_t__ proc_limit; scalar_t__ posted_limit; scalar_t__ max_num_processed; TYPE_3__ u; TYPE_2__ dma; scalar_t__ max_process_time; } ;
typedef  TYPE_4__ sli4_queue_t ;
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_13__ {scalar_t__ hw_rq_count; TYPE_6__** hw_rq; } ;
typedef  TYPE_5__ ocs_hw_t ;
struct TYPE_14__ {scalar_t__ entry_count; int /*<<< orphan*/ ** rq_tracker; } ;
typedef  TYPE_6__ hw_rq_t ;

/* Variables and functions */
#define  SLI_QTYPE_CQ 131 
#define  SLI_QTYPE_MQ 130 
#define  SLI_QTYPE_RQ 129 
#define  SLI_QTYPE_WQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(ocs_textbuf_t *textbuf, const char *name, ocs_hw_t *hw, sli4_queue_t *q, uint32_t q_count, uint32_t qentries)
{
	uint32_t i;

	for (i = 0; i < q_count; i ++, q ++) {
		FUNC2(textbuf, name, i);
		FUNC3(textbuf, "index", "%d", q->index);
		FUNC3(textbuf, "size", "%d", q->size);
		FUNC3(textbuf, "length", "%d", q->length);
		FUNC3(textbuf, "n_posted", "%d", q->n_posted);
		FUNC3(textbuf, "id", "%d", q->id);
		FUNC3(textbuf, "type", "%d", q->type);
		FUNC3(textbuf, "proc_limit", "%d", q->proc_limit);
		FUNC3(textbuf, "posted_limit", "%d", q->posted_limit);
		FUNC3(textbuf, "max_num_processed", "%d", q->max_num_processed);
		FUNC3(textbuf, "max_process_time", "%ld", (unsigned long)q->max_process_time);
		FUNC3(textbuf, "virt_addr", "%p", q->dma.virt);
		FUNC3(textbuf, "phys_addr", "%lx", (unsigned long)q->dma.phys);

		/* queue-specific information */
		switch (q->type) {
		case SLI_QTYPE_MQ:
			FUNC3(textbuf, "r_idx", "%d", q->u.r_idx);
			break;
		case SLI_QTYPE_CQ:
			FUNC3(textbuf, "is_mq", "%d", q->u.flag.is_mq);
			break;
		case SLI_QTYPE_WQ:
			break;
		case SLI_QTYPE_RQ: {
			uint32_t i;
			uint32_t j;
			uint32_t rqe_count = 0;
			hw_rq_t *rq;

			FUNC3(textbuf, "is_hdr", "%d", q->u.flag.is_hdr);
			FUNC3(textbuf, "rq_batch", "%d", q->u.flag.rq_batch);

			/* loop through RQ tracker to see how many RQEs were produced */
			for (i = 0; i < hw->hw_rq_count; i++) {
				rq = hw->hw_rq[i];
				for (j = 0; j < rq->entry_count; j++) {
					if (rq->rq_tracker[j] != NULL) {
						rqe_count++;
					}
				}
			}
			FUNC3(textbuf, "rqes_produced", "%d", rqe_count);
			break;
		}
		}
		FUNC1(textbuf, q->dma.virt, q->size, q->length,
					((q->type == SLI_QTYPE_MQ) ? q->u.r_idx : q->index),
					qentries);
		FUNC0(textbuf, name, i);
	}
}