#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_3__ ocs_t ;
typedef  int /*<<< orphan*/  ocs_lock_t ;
typedef  int /*<<< orphan*/  ocs_list_t ;
struct TYPE_13__ {int /*<<< orphan*/ * hio; TYPE_2__* header; } ;
typedef  TYPE_4__ ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  fc_header_t ;
struct TYPE_10__ {scalar_t__ virt; } ;
struct TYPE_11__ {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC4(ocs_t *ocs, ocs_list_t *pend_list, ocs_lock_t *list_lock)
{
	ocs_hw_sequence_t *frame;

	for (;;) {
		frame = FUNC1(pend_list, list_lock);
		if (frame == NULL) {
			break;
		}

		FUNC0(ocs, (fc_header_t*) frame->header->dma.virt, "Discarding held frame\n");
		if (frame->hio != NULL) {
			FUNC3(ocs, frame->hio);
		}
		FUNC2(&ocs->hw, frame);
	}

	return 0;
}