#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_19__ {int /*<<< orphan*/  pend_frames_lock; int /*<<< orphan*/  pend_frames; scalar_t__ hold_frames; } ;
typedef  TYPE_3__ ocs_xport_fcfi_t ;
struct TYPE_17__ {scalar_t__ override_fcfi; } ;
struct TYPE_16__ {int first_domain_idx; TYPE_1__ workaround; } ;
struct TYPE_20__ {TYPE_11__ hw; TYPE_2__* xport; } ;
typedef  TYPE_4__ ocs_t ;
struct TYPE_21__ {size_t fcfi; int /*<<< orphan*/ * hio; } ;
typedef  TYPE_5__ ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  ocs_domain_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_18__ {TYPE_3__* fcfi; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_11__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC11(ocs_t *ocs, ocs_hw_sequence_t *seq)
{
	ocs_xport_fcfi_t *xport_fcfi = NULL;
	ocs_domain_t *domain;
	uint8_t seq_fcfi = seq->fcfi;

	/* HW_WORKAROUND_OVERRIDE_FCFI_IN_SRB */
	if (ocs->hw.workaround.override_fcfi) {
		if (ocs->hw.first_domain_idx > -1) {
			seq_fcfi = ocs->hw.first_domain_idx;
		}
	}

	/* Range check seq->fcfi */
	if (seq_fcfi < FUNC0(ocs->xport->fcfi)) {
		xport_fcfi = &ocs->xport->fcfi[seq_fcfi];
	}

	/* If the transport FCFI entry is NULL, then drop the frame */
	if (xport_fcfi == NULL) {
		FUNC8(ocs, "FCFI %d is not valid, dropping frame\n", seq->fcfi);
		if (seq->hio != NULL) {
			FUNC9(ocs, seq->hio);
		}

		FUNC4(&ocs->hw, seq);
		return 0;
	}
	domain = FUNC3(&ocs->hw, seq_fcfi);

	/*
	 * If we are holding frames or the domain is not yet registered or
	 * there's already frames on the pending list,
	 * then add the new frame to pending list
	 */
	if (domain == NULL ||
	    xport_fcfi->hold_frames ||
	    !FUNC6(&xport_fcfi->pend_frames)) {
		FUNC7(&xport_fcfi->pend_frames_lock);
			FUNC5(&xport_fcfi->pend_frames, seq);
		FUNC10(&xport_fcfi->pend_frames_lock);

		if (domain != NULL) {
			/* immediately process pending frames */
			FUNC2(domain);
		}
	} else {
		/*
		 * We are not holding frames and pending list is empty, just process frame.
		 * A non-zero return means the frame was not handled - so cleanup
		 */
		if (FUNC1(domain, seq)) {
			if (seq->hio != NULL) {
				FUNC9(ocs, seq->hio);
			}
			FUNC4(&ocs->hw, seq);
		}
	}
	return 0;
}