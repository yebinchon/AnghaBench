
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int link_speed; } ;
struct TYPE_9__ {scalar_t__ status; } ;
struct TYPE_13__ {int attention_type; int topology; TYPE_3__ link_current; int acquired_al_pa; TYPE_1__ hdr; } ;
typedef TYPE_5__ sli4_cmd_read_topology_t ;
struct TYPE_12__ {int speed; int * loop_map; int medium; int topology; int fc_id; int status; } ;
struct TYPE_10__ {int * virt; } ;
struct TYPE_14__ {int os; TYPE_4__ link; TYPE_2__ loop_map; } ;
typedef TYPE_6__ ocs_hw_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int SLI4_FCOE_FCF_TABLE_FIRST ;
 int SLI_LINK_MEDIUM_FC ;
 int SLI_LINK_STATUS_DOWN ;
 int SLI_LINK_STATUS_MAX ;
 int SLI_LINK_STATUS_NO_ALPA ;
 int SLI_LINK_STATUS_UP ;
 int SLI_LINK_TOPO_LOOP ;
 int SLI_LINK_TOPO_MAX ;
 int SLI_LINK_TOPO_NPORT ;
 int ocs_free (int ,int *,int ) ;
 int ocs_hw_read_fcf (TYPE_6__*,int ) ;
 int ocs_log_debug (int ,char*,int,scalar_t__) ;

__attribute__((used)) static int32_t
__ocs_read_topology_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 sli4_cmd_read_topology_t *read_topo = (sli4_cmd_read_topology_t *)mqe;

 if (status || read_topo->hdr.status) {
  ocs_log_debug(hw->os, "bad status cqe=%#x mqe=%#x\n",
    status, read_topo->hdr.status);
  ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
  return -1;
 }

 switch (read_topo->attention_type) {
 case 135:
  hw->link.status = SLI_LINK_STATUS_UP;
  break;
 case 137:
  hw->link.status = SLI_LINK_STATUS_DOWN;
  break;
 case 136:
  hw->link.status = SLI_LINK_STATUS_NO_ALPA;
  break;
 default:
  hw->link.status = SLI_LINK_STATUS_MAX;
  break;
 }

 switch (read_topo->topology) {
 case 134:
  hw->link.topology = SLI_LINK_TOPO_NPORT;
  break;
 case 138:
  hw->link.topology = SLI_LINK_TOPO_LOOP;
  if (SLI_LINK_STATUS_UP == hw->link.status) {
   hw->link.loop_map = hw->loop_map.virt;
  }
  hw->link.fc_id = read_topo->acquired_al_pa;
  break;
 default:
  hw->link.topology = SLI_LINK_TOPO_MAX;
  break;
 }

 hw->link.medium = SLI_LINK_MEDIUM_FC;

 switch (read_topo->link_current.link_speed) {
 case 132:
  hw->link.speed = 1 * 1000;
  break;
 case 131:
  hw->link.speed = 2 * 1000;
  break;
 case 129:
  hw->link.speed = 4 * 1000;
  break;
 case 128:
  hw->link.speed = 8 * 1000;
  break;
 case 133:
  hw->link.speed = 16 * 1000;
  hw->link.loop_map = ((void*)0);
  break;
 case 130:
  hw->link.speed = 32 * 1000;
  hw->link.loop_map = ((void*)0);
  break;
 }

 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);

 ocs_hw_read_fcf(hw, SLI4_FCOE_FCF_TABLE_FIRST);

 return 0;
}
