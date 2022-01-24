#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_5__ sli4_queue_t ;
struct TYPE_19__ {size_t* hw_rq_lookup; int /*<<< orphan*/  os; int /*<<< orphan*/  sli; TYPE_8__** hw_rq; TYPE_5__* rq; } ;
typedef  TYPE_6__ ocs_hw_t ;
struct TYPE_20__ {TYPE_4__* payload; TYPE_2__* header; } ;
typedef  TYPE_7__ ocs_hw_sequence_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_21__ {TYPE_7__** rq_tracker; } ;
typedef  TYPE_8__ hw_rq_t ;
struct TYPE_16__ {int /*<<< orphan*/  phys; } ;
struct TYPE_17__ {size_t rqindex; TYPE_3__ dma; } ;
struct TYPE_14__ {int /*<<< orphan*/  phys; } ;
struct TYPE_15__ {size_t rqindex; TYPE_1__ dma; } ;

/* Variables and functions */
 scalar_t__ OCS_HW_RTN_ERROR ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,void*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static int32_t
FUNC8(ocs_hw_t *hw, ocs_hw_sequence_t *seq)
{
	sli4_queue_t *rq_hdr = &hw->rq[seq->header->rqindex];
	sli4_queue_t *rq_payload = &hw->rq[seq->payload->rqindex];
	uint32_t hw_rq_index = hw->hw_rq_lookup[seq->header->rqindex];
	hw_rq_t *rq = hw->hw_rq[hw_rq_index];
	uint32_t     phys_hdr[2];
	uint32_t     phys_payload[2];
	int32_t      qindex_hdr;
	int32_t      qindex_payload;

	/* Update the RQ verification lookup tables */
	phys_hdr[0] = FUNC1(seq->header->dma.phys);
	phys_hdr[1] = FUNC2(seq->header->dma.phys);
	phys_payload[0] = FUNC1(seq->payload->dma.phys);
	phys_payload[1] = FUNC2(seq->payload->dma.phys);

	FUNC6(rq_hdr);
	FUNC6(rq_payload);

	/*
	 * Note: The header must be posted last for buffer pair mode because
	 *       posting on the header queue posts the payload queue as well.
	 *       We do not ring the payload queue independently in RQ pair mode.
	 */
	qindex_payload = FUNC0(&hw->sli, rq_payload, (void *)phys_payload);
	qindex_hdr = FUNC0(&hw->sli, rq_hdr, (void *)phys_hdr);
	if (qindex_hdr < 0 ||
	    qindex_payload < 0) {
		FUNC4(hw->os, "RQ_ID=%#x write failed\n", rq_hdr->id);
		FUNC7(rq_payload);
		FUNC7(rq_hdr);
		return OCS_HW_RTN_ERROR;
	}

	/* ensure the indexes are the same */
	FUNC3(qindex_hdr == qindex_payload);

	/* Update the lookup table */
	if (rq->rq_tracker[qindex_hdr] == NULL) {
		rq->rq_tracker[qindex_hdr] = seq;
	} else {
		FUNC5(hw->os, "expected rq_tracker[%d][%d] buffer to be NULL\n",
			     hw_rq_index, qindex_hdr);
	}

	FUNC7(rq_payload);
	FUNC7(rq_hdr);
	return OCS_HW_RTN_SUCCESS;
}