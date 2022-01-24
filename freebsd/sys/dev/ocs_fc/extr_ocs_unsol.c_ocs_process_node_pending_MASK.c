#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_13__ {scalar_t__ pend_frames_processed; int /*<<< orphan*/  pend_frames_lock; int /*<<< orphan*/  pend_frames; TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
struct TYPE_14__ {int /*<<< orphan*/ * hio; } ;
typedef  TYPE_3__ ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int32_t
FUNC8(ocs_node_t *node)
{
	ocs_t *ocs = node->ocs;
	ocs_hw_sequence_t *seq = NULL;
	uint32_t pend_frames_processed = 0;

	for (;;) {
		/* need to check for hold frames condition after each frame processed
		 * because any given frame could cause a transition to a state that
		 * holds frames
		 */
		if (FUNC5(node)) {
			break;
		}

		/* Get next frame/sequence */
		FUNC2(&node->pend_frames_lock);
			seq = FUNC1(&node->pend_frames);
			if (seq == NULL) {
				pend_frames_processed = node->pend_frames_processed;
				node->pend_frames_processed = 0;
				FUNC7(&node->pend_frames_lock);
				break;
			}
			node->pend_frames_processed++;
		FUNC7(&node->pend_frames_lock);

		/* now dispatch frame(s) to dispatch function */
		if (FUNC4(node, seq)) {
			if (seq->hio != NULL) {
				FUNC6(ocs, seq->hio);
			}
			FUNC0(&ocs->hw, seq);
		}
	}

	if (pend_frames_processed != 0) {
		FUNC3(ocs, "%u node frames held and processed\n", pend_frames_processed);
	}

	return 0;
}