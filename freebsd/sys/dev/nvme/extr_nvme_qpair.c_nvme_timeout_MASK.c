#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct nvme_tracker {int /*<<< orphan*/  cid; struct nvme_qpair* qpair; } ;
struct nvme_qpair {int /*<<< orphan*/  id; struct nvme_controller* ctrlr; } ;
struct nvme_controller {scalar_t__ enable_aborts; } ;

/* Variables and functions */
 int NVME_CSTS_REG_CFS_MASK ; 
 int NVME_CSTS_REG_CFS_SHIFT ; 
 int /*<<< orphan*/  nvme_abort_complete ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_tracker*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_controller*) ; 
 int FUNC2 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,char*,...) ; 
 scalar_t__ FUNC4 (struct nvme_qpair*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct nvme_tracker	*tr = arg;
	struct nvme_qpair	*qpair = tr->qpair;
	struct nvme_controller	*ctrlr = qpair->ctrlr;
	uint32_t		csts;
	uint8_t			cfs;

	/*
	 * Read csts to get value of cfs - controller fatal status.
	 * If no fatal status, try to call the completion routine, and
	 * if completes transactions, report a missed interrupt and
	 * return (this may need to be rate limited). Otherwise, if
	 * aborts are enabled and the controller is not reporting
	 * fatal status, abort the command. Otherwise, just reset the
	 * controller and hope for the best.
	 */
	csts = FUNC2(ctrlr, csts);
	cfs = (csts >> NVME_CSTS_REG_CFS_SHIFT) & NVME_CSTS_REG_CFS_MASK;
	if (cfs == 0 && FUNC4(qpair)) {
		FUNC3(ctrlr, "Missing interrupt\n");
		return;
	}
	if (ctrlr->enable_aborts && cfs == 0) {
		FUNC3(ctrlr, "Aborting command due to a timeout.\n");
		FUNC0(ctrlr, tr->cid, qpair->id,
		    nvme_abort_complete, tr);
	} else {
		FUNC3(ctrlr, "Resetting controller due to a timeout%s.\n",
		    (csts == 0xffffffff) ? " and possible hot unplug" :
		    (cfs ? " and fatal error status" : ""));
		FUNC1(ctrlr);
	}
}