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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nvme_qpair {int /*<<< orphan*/  num_failures; int /*<<< orphan*/  num_retries; int /*<<< orphan*/  num_intr_handler_calls; int /*<<< orphan*/  num_cmds; int /*<<< orphan*/  cq_head; int /*<<< orphan*/  sq_tail; int /*<<< orphan*/  sq_head; int /*<<< orphan*/  num_trackers; int /*<<< orphan*/  num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct nvme_qpair*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  nvme_sysctl_dump_debug ; 

__attribute__((used)) static void
FUNC4(struct nvme_qpair *qpair,
    struct sysctl_ctx_list *ctrlr_ctx, struct sysctl_oid *que_tree)
{
	struct sysctl_oid_list	*que_list = FUNC3(que_tree);

	FUNC2(ctrlr_ctx, que_list, OID_AUTO, "num_entries",
	    CTLFLAG_RD, &qpair->num_entries, 0,
	    "Number of entries in hardware queue");
	FUNC2(ctrlr_ctx, que_list, OID_AUTO, "num_trackers",
	    CTLFLAG_RD, &qpair->num_trackers, 0,
	    "Number of trackers pre-allocated for this queue pair");
	FUNC2(ctrlr_ctx, que_list, OID_AUTO, "sq_head",
	    CTLFLAG_RD, &qpair->sq_head, 0,
	    "Current head of submission queue (as observed by driver)");
	FUNC2(ctrlr_ctx, que_list, OID_AUTO, "sq_tail",
	    CTLFLAG_RD, &qpair->sq_tail, 0,
	    "Current tail of submission queue (as observed by driver)");
	FUNC2(ctrlr_ctx, que_list, OID_AUTO, "cq_head",
	    CTLFLAG_RD, &qpair->cq_head, 0,
	    "Current head of completion queue (as observed by driver)");

	FUNC1(ctrlr_ctx, que_list, OID_AUTO, "num_cmds",
	    CTLFLAG_RD, &qpair->num_cmds, "Number of commands submitted");
	FUNC1(ctrlr_ctx, que_list, OID_AUTO, "num_intr_handler_calls",
	    CTLFLAG_RD, &qpair->num_intr_handler_calls,
	    "Number of times interrupt handler was invoked (will typically be "
	    "less than number of actual interrupts generated due to "
	    "coalescing)");
	FUNC1(ctrlr_ctx, que_list, OID_AUTO, "num_retries",
	    CTLFLAG_RD, &qpair->num_retries, "Number of commands retried");
	FUNC1(ctrlr_ctx, que_list, OID_AUTO, "num_failures",
	    CTLFLAG_RD, &qpair->num_failures,
	    "Number of commands ending in failure after all retries");

	FUNC0(ctrlr_ctx, que_list, OID_AUTO,
	    "dump_debug", CTLTYPE_UINT | CTLFLAG_RW, qpair, 0,
	    nvme_sysctl_dump_debug, "IU", "Dump debug data");
}