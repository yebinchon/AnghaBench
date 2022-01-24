#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_15__ {scalar_t__ pend_frames_processed; int /*<<< orphan*/  pend_frames_lock; int /*<<< orphan*/  pend_frames; } ;
typedef  TYPE_2__ ocs_xport_fcfi_t ;
struct TYPE_16__ {int /*<<< orphan*/  hw; TYPE_1__* xport; } ;
typedef  TYPE_3__ ocs_t ;
struct TYPE_17__ {int /*<<< orphan*/ * hio; } ;
typedef  TYPE_4__ ocs_hw_sequence_t ;
struct TYPE_18__ {size_t fcf_indicator; TYPE_3__* ocs; } ;
typedef  TYPE_5__ ocs_domain_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_14__ {TYPE_2__* fcfi; } ;

/* Variables and functions */
 size_t SLI4_MAX_FCFI ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int32_t
FUNC9(ocs_domain_t *domain)
{
	ocs_t *ocs = domain->ocs;
	ocs_xport_fcfi_t *xport_fcfi;
	ocs_hw_sequence_t *seq = NULL;
	uint32_t pend_frames_processed = 0;

	FUNC0(domain->fcf_indicator < SLI4_MAX_FCFI, -1);
	xport_fcfi = &ocs->xport->fcfi[domain->fcf_indicator];

	for (;;) {
		/* need to check for hold frames condition after each frame processed
		 * because any given frame could cause a transition to a state that
		 * holds frames
		 */
		if (FUNC2(domain)) {
			break;
		}

		/* Get next frame/sequence */
		FUNC5(&xport_fcfi->pend_frames_lock);
			seq = FUNC4(&xport_fcfi->pend_frames);
			if (seq == NULL) {
				pend_frames_processed = xport_fcfi->pend_frames_processed;
				xport_fcfi->pend_frames_processed = 0;
				FUNC8(&xport_fcfi->pend_frames_lock);
				break;
			}
			xport_fcfi->pend_frames_processed++;
		FUNC8(&xport_fcfi->pend_frames_lock);

		/* now dispatch frame(s) to dispatch function */
		if (FUNC1(domain, seq)) {
			if (seq->hio != NULL) {
				FUNC7(ocs, seq->hio);
			}
			FUNC3(&ocs->hw, seq);
		}
	}
	if (pend_frames_processed != 0) {
		FUNC6(ocs, "%u domain frames held and processed\n", pend_frames_processed);
	}
	return 0;
}