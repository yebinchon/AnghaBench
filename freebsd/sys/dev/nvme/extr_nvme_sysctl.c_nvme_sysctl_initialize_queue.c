
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nvme_qpair {int num_failures; int num_retries; int num_intr_handler_calls; int num_cmds; int cq_head; int sq_tail; int sq_head; int num_trackers; int num_entries; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct nvme_qpair*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int nvme_sysctl_dump_debug ;

__attribute__((used)) static void
nvme_sysctl_initialize_queue(struct nvme_qpair *qpair,
    struct sysctl_ctx_list *ctrlr_ctx, struct sysctl_oid *que_tree)
{
 struct sysctl_oid_list *que_list = SYSCTL_CHILDREN(que_tree);

 SYSCTL_ADD_UINT(ctrlr_ctx, que_list, OID_AUTO, "num_entries",
     CTLFLAG_RD, &qpair->num_entries, 0,
     "Number of entries in hardware queue");
 SYSCTL_ADD_UINT(ctrlr_ctx, que_list, OID_AUTO, "num_trackers",
     CTLFLAG_RD, &qpair->num_trackers, 0,
     "Number of trackers pre-allocated for this queue pair");
 SYSCTL_ADD_UINT(ctrlr_ctx, que_list, OID_AUTO, "sq_head",
     CTLFLAG_RD, &qpair->sq_head, 0,
     "Current head of submission queue (as observed by driver)");
 SYSCTL_ADD_UINT(ctrlr_ctx, que_list, OID_AUTO, "sq_tail",
     CTLFLAG_RD, &qpair->sq_tail, 0,
     "Current tail of submission queue (as observed by driver)");
 SYSCTL_ADD_UINT(ctrlr_ctx, que_list, OID_AUTO, "cq_head",
     CTLFLAG_RD, &qpair->cq_head, 0,
     "Current head of completion queue (as observed by driver)");

 SYSCTL_ADD_QUAD(ctrlr_ctx, que_list, OID_AUTO, "num_cmds",
     CTLFLAG_RD, &qpair->num_cmds, "Number of commands submitted");
 SYSCTL_ADD_QUAD(ctrlr_ctx, que_list, OID_AUTO, "num_intr_handler_calls",
     CTLFLAG_RD, &qpair->num_intr_handler_calls,
     "Number of times interrupt handler was invoked (will typically be "
     "less than number of actual interrupts generated due to "
     "coalescing)");
 SYSCTL_ADD_QUAD(ctrlr_ctx, que_list, OID_AUTO, "num_retries",
     CTLFLAG_RD, &qpair->num_retries, "Number of commands retried");
 SYSCTL_ADD_QUAD(ctrlr_ctx, que_list, OID_AUTO, "num_failures",
     CTLFLAG_RD, &qpair->num_failures,
     "Number of commands ending in failure after all retries");

 SYSCTL_ADD_PROC(ctrlr_ctx, que_list, OID_AUTO,
     "dump_debug", CTLTYPE_UINT | CTLFLAG_RW, qpair, 0,
     nvme_sysctl_dump_debug, "IU", "Dump debug data");
}
