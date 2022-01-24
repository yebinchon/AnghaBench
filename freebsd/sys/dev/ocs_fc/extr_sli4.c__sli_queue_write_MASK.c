#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {scalar_t__ perf_wq_id_association; } ;
struct TYPE_10__ {int /*<<< orphan*/  os; TYPE_1__ config; } ;
typedef  TYPE_2__ sli4_t ;
struct TYPE_12__ {int /*<<< orphan*/ * virt; } ;
struct TYPE_11__ {int index; int size; int type; int n_posted; int length; TYPE_6__ dma; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ sli4_queue_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_MQ_DUMP ; 
 int /*<<< orphan*/  OCS_DEBUG_ENABLE_WQ_DUMP ; 
 int /*<<< orphan*/  OCS_DMASYNC_PREWRITE ; 
#define  SLI_QTYPE_MQ 129 
#define  SLI_QTYPE_WQ 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int32_t
FUNC5(sli4_t *sli4, sli4_queue_t *q, uint8_t *entry)
{
	int32_t		rc = 0;
	uint8_t		*qe = q->dma.virt;
	uint32_t	qindex;

	qindex = q->index;
	qe += q->index * q->size;

	if (entry) {
		if ((SLI_QTYPE_WQ == q->type) && sli4->config.perf_wq_id_association) {
			FUNC4(entry, q->id);
		}
#if defined(OCS_INCLUDE_DEBUG)
		switch (q->type) {
		case SLI_QTYPE_WQ: {
			ocs_dump32(OCS_DEBUG_ENABLE_WQ_DUMP, sli4->os, "wqe", entry, q->size);
			break;

		}
		case SLI_QTYPE_MQ:
			/* Note: we don't really need to dump the whole 
			 * 256 bytes, just do 64 */
			ocs_dump32(OCS_DEBUG_ENABLE_MQ_DUMP, sli4->os, "mqe outbound", entry, 64);
			break;

		default:
			break;
		}
#endif
		FUNC2(qe, entry, q->size);
		q->n_posted = 1;
	}

	FUNC0(&q->dma, OCS_DMASYNC_PREWRITE);

	rc = FUNC3(sli4, q);

	q->index = (q->index + q->n_posted) & (q->length - 1);
	q->n_posted = 0;

	if (rc < 0) {
		/* failure */
		return rc;
	} else if (rc > 0) {
		/* failure, but we need to return a negative value on failure */
		return -rc;
	} else {
		return qindex;
	}
}