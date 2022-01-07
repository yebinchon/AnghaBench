
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_15__ {int status; int speed; int topology; } ;
typedef TYPE_3__ sli4_link_event_t ;
struct TYPE_16__ {int dev; } ;
typedef TYPE_4__ ocs_t ;
struct TYPE_14__ {int domain; } ;
struct TYPE_13__ {int (* domain ) (int ,int ,int *) ;} ;
struct TYPE_17__ {TYPE_4__* os; TYPE_2__ args; TYPE_1__ callback; int ** domains; TYPE_3__ link; int loop_map; int sli; } ;
typedef TYPE_5__ ocs_hw_t ;
typedef int ocs_domain_t ;
typedef int int32_t ;


 int OCS_CMD_NOWAIT ;
 int OCS_HW_DOMAIN_LOST ;
 int OCS_HW_RTN_ERROR ;
 int OCS_HW_RTN_SUCCESS ;
 int OCS_M_NOWAIT ;
 int SLI4_BMBX_SIZE ;
 int SLI4_FCOE_FCF_TABLE_FIRST ;
 size_t SLI4_MAX_FCFI ;


 int SLI_LINK_TOPO_LOOP ;
 int SLI_LINK_TOPO_NPORT ;
 int __ocs_read_topology_cb ;
 int device_printf (int ,char*,...) ;
 int ocs_free (TYPE_4__*,int *,int ) ;
 int ocs_hw_command (TYPE_5__*,int *,int ,int ,int *) ;
 int ocs_hw_link_event_init (TYPE_5__*) ;
 int ocs_hw_read_fcf (TYPE_5__*,int ) ;
 int ocs_log_err (TYPE_4__*,char*) ;
 int ocs_log_test (TYPE_4__*,char*,...) ;
 int * ocs_malloc (TYPE_4__*,int ,int ) ;
 int sli_cmd_read_topology (int *,int *,int ,int *) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static int32_t
ocs_hw_cb_link(void *ctx, void *e)
{
 ocs_hw_t *hw = ctx;
 sli4_link_event_t *event = e;
 ocs_domain_t *d = ((void*)0);
 uint32_t i = 0;
 int32_t rc = OCS_HW_RTN_ERROR;
 ocs_t *ocs = hw->os;

 ocs_hw_link_event_init(hw);

 switch (event->status) {
 case 128:

  hw->link = *event;

  if (SLI_LINK_TOPO_NPORT == event->topology) {
   device_printf(ocs->dev, "Link Up, NPORT, speed is %d\n", event->speed);
   ocs_hw_read_fcf(hw, SLI4_FCOE_FCF_TABLE_FIRST);
  } else if (SLI_LINK_TOPO_LOOP == event->topology) {
   uint8_t *buf = ((void*)0);
   device_printf(ocs->dev, "Link Up, LOOP, speed is %d\n", event->speed);

   buf = ocs_malloc(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
   if (!buf) {
    ocs_log_err(hw->os, "no buffer for command\n");
    break;
   }

   if (sli_cmd_read_topology(&hw->sli, buf, SLI4_BMBX_SIZE, &hw->loop_map)) {
    rc = ocs_hw_command(hw, buf, OCS_CMD_NOWAIT, __ocs_read_topology_cb, ((void*)0));
   }

   if (rc != OCS_HW_RTN_SUCCESS) {
    ocs_log_test(hw->os, "READ_TOPOLOGY failed\n");
    ocs_free(hw->os, buf, SLI4_BMBX_SIZE);
   }
  } else {
   device_printf(ocs->dev, "Link Up, unsupported topology (%#x), speed is %d\n",
     event->topology, event->speed);
  }
  break;
 case 129:
  device_printf(ocs->dev, "Link Down\n");

  hw->link.status = event->status;

  for (i = 0; i < SLI4_MAX_FCFI; i++) {
   d = hw->domains[i];
   if (d != ((void*)0) &&
       hw->callback.domain != ((void*)0)) {
    hw->callback.domain(hw->args.domain, OCS_HW_DOMAIN_LOST, d);
   }
  }
  break;
 default:
  ocs_log_test(hw->os, "unhandled link status %#x\n", event->status);
  break;
 }

 return 0;
}
