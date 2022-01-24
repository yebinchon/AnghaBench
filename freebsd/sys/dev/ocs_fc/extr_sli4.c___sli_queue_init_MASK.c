#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  if_type; int /*<<< orphan*/  os; } ;
typedef  TYPE_1__ sli4_t ;
struct TYPE_10__ {TYPE_2__* virt; scalar_t__ size; } ;
struct TYPE_9__ {size_t size; size_t length; size_t type; size_t proc_limit; int posted_limit; int /*<<< orphan*/  lock; TYPE_4__ dma; } ;
typedef  TYPE_2__ sli4_queue_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_IF_TYPE_BE3_SKH_PF ; 
 int /*<<< orphan*/  SLI4_IF_TYPE_BE3_SKH_VF ; 
 int /*<<< orphan*/ * SLI_QNAME ; 
#define  SLI_QTYPE_EQ 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 

int32_t
FUNC6(sli4_t *sli4, sli4_queue_t *q, uint32_t qtype,
		size_t size, uint32_t n_entries, uint32_t align)
{

	if ((q->dma.virt == NULL) || (size != q->size) || (n_entries != q->length)) {
		if (q->dma.size) {
			FUNC1(sli4->os, &q->dma);
		}

		FUNC5(q, 0, sizeof(sli4_queue_t));

		if (FUNC0(sli4->os, &q->dma, size * n_entries, align)) {
			FUNC4(sli4->os, "%s allocation failed\n", SLI_QNAME[qtype]);
			return -1;
		}

		FUNC5(q->dma.virt, 0, size * n_entries);

		FUNC3(sli4->os, &q->lock, "%s lock[%d:%p]", 
			SLI_QNAME[qtype], FUNC2(sli4->os), &q->lock);

		q->type = qtype;
		q->size = size;
		q->length = n_entries;

		/* Limit to hwf the queue size per interrupt */
		q->proc_limit = n_entries / 2;

		switch(q->type) {
		case SLI_QTYPE_EQ:
			q->posted_limit = q->length / 2;
			break;
		default:
			if ((sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF) ||
			    (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_VF)) {
				/* For Skyhawk, ring the doorbell more often */
				q->posted_limit = 8;
			} else {
				q->posted_limit = 64;
			}
			break;
		}
	}

	return 0;
}