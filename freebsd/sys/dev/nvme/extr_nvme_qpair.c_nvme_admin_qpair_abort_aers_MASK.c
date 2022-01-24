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
struct nvme_tracker {TYPE_2__* req; } ;
struct nvme_qpair {int /*<<< orphan*/  outstanding_tr; } ;
struct TYPE_3__ {scalar_t__ opc; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_PRINT_NONE ; 
 scalar_t__ NVME_OPC_ASYNC_EVENT_REQUEST ; 
 int /*<<< orphan*/  NVME_SCT_GENERIC ; 
 int /*<<< orphan*/  NVME_SC_ABORTED_SQ_DELETION ; 
 struct nvme_tracker* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_tracker* FUNC1 (struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_qpair*,struct nvme_tracker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tailq ; 

__attribute__((used)) static void
FUNC3(struct nvme_qpair *qpair)
{
	struct nvme_tracker	*tr;

	tr = FUNC0(&qpair->outstanding_tr);
	while (tr != NULL) {
		if (tr->req->cmd.opc == NVME_OPC_ASYNC_EVENT_REQUEST) {
			FUNC2(qpair, tr,
			    NVME_SCT_GENERIC, NVME_SC_ABORTED_SQ_DELETION, 0,
			    ERROR_PRINT_NONE);
			tr = FUNC0(&qpair->outstanding_tr);
		} else {
			tr = FUNC1(tr, tailq);
		}
	}
}