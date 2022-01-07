
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct nvme_controller {int num_io_queues; int * ioq; int adminq; int dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_S64 ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int QUEUE_NAME_LENGTH ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct nvme_controller*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int nvme_sysctl_initialize_queue (int *,struct sysctl_ctx_list*,struct sysctl_oid*) ;
 int nvme_sysctl_int_coal_threshold ;
 int nvme_sysctl_int_coal_time ;
 int nvme_sysctl_num_cmds ;
 int nvme_sysctl_num_failures ;
 int nvme_sysctl_num_intr_handler_calls ;
 int nvme_sysctl_num_retries ;
 int nvme_sysctl_reset_stats ;
 int nvme_sysctl_timeout_period ;
 int snprintf (char*,int,char*,int) ;

void
nvme_sysctl_initialize_ctrlr(struct nvme_controller *ctrlr)
{
 struct sysctl_ctx_list *ctrlr_ctx;
 struct sysctl_oid *ctrlr_tree, *que_tree;
 struct sysctl_oid_list *ctrlr_list;

 char queue_name[16];
 int i;

 ctrlr_ctx = device_get_sysctl_ctx(ctrlr->dev);
 ctrlr_tree = device_get_sysctl_tree(ctrlr->dev);
 ctrlr_list = SYSCTL_CHILDREN(ctrlr_tree);

 SYSCTL_ADD_UINT(ctrlr_ctx, ctrlr_list, OID_AUTO, "num_io_queues",
     CTLFLAG_RD, &ctrlr->num_io_queues, 0,
     "Number of I/O queue pairs");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "int_coal_time", CTLTYPE_UINT | CTLFLAG_RW, ctrlr, 0,
     nvme_sysctl_int_coal_time, "IU",
     "Interrupt coalescing timeout (in microseconds)");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "int_coal_threshold", CTLTYPE_UINT | CTLFLAG_RW, ctrlr, 0,
     nvme_sysctl_int_coal_threshold, "IU",
     "Interrupt coalescing threshold");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "timeout_period", CTLTYPE_UINT | CTLFLAG_RW, ctrlr, 0,
     nvme_sysctl_timeout_period, "IU",
     "Timeout period (in seconds)");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "num_cmds", CTLTYPE_S64 | CTLFLAG_RD,
     ctrlr, 0, nvme_sysctl_num_cmds, "IU",
     "Number of commands submitted");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "num_intr_handler_calls", CTLTYPE_S64 | CTLFLAG_RD,
     ctrlr, 0, nvme_sysctl_num_intr_handler_calls, "IU",
     "Number of times interrupt handler was invoked (will "
     "typically be less than number of actual interrupts "
     "generated due to coalescing)");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "num_retries", CTLTYPE_S64 | CTLFLAG_RD,
     ctrlr, 0, nvme_sysctl_num_retries, "IU",
     "Number of commands retried");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "num_failures", CTLTYPE_S64 | CTLFLAG_RD,
     ctrlr, 0, nvme_sysctl_num_failures, "IU",
     "Number of commands ending in failure after all retries");

 SYSCTL_ADD_PROC(ctrlr_ctx, ctrlr_list, OID_AUTO,
     "reset_stats", CTLTYPE_UINT | CTLFLAG_RW, ctrlr, 0,
     nvme_sysctl_reset_stats, "IU", "Reset statistics to zero");

 que_tree = SYSCTL_ADD_NODE(ctrlr_ctx, ctrlr_list, OID_AUTO, "adminq",
     CTLFLAG_RD, ((void*)0), "Admin Queue");

 nvme_sysctl_initialize_queue(&ctrlr->adminq, ctrlr_ctx, que_tree);

 for (i = 0; i < ctrlr->num_io_queues; i++) {
  snprintf(queue_name, 16, "ioq%d", i);
  que_tree = SYSCTL_ADD_NODE(ctrlr_ctx, ctrlr_list, OID_AUTO,
      queue_name, CTLFLAG_RD, ((void*)0), "IO Queue");
  nvme_sysctl_initialize_queue(&ctrlr->ioq[i], ctrlr_ctx,
      que_tree);
 }
}
