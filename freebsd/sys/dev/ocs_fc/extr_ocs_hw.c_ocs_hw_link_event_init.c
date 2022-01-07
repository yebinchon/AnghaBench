
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fc_id; int * loop_map; scalar_t__ speed; int medium; int topology; int status; } ;
struct TYPE_6__ {TYPE_1__ link; } ;
typedef TYPE_2__ ocs_hw_t ;
typedef int ocs_hw_rtn_e ;


 int OCS_HW_RTN_SUCCESS ;
 int SLI_LINK_MEDIUM_MAX ;
 int SLI_LINK_STATUS_MAX ;
 int SLI_LINK_TOPO_NONE ;
 int UINT32_MAX ;
 int ocs_hw_assert (TYPE_2__*) ;

__attribute__((used)) static ocs_hw_rtn_e
ocs_hw_link_event_init(ocs_hw_t *hw)
{
 ocs_hw_assert(hw);

 hw->link.status = SLI_LINK_STATUS_MAX;
 hw->link.topology = SLI_LINK_TOPO_NONE;
 hw->link.medium = SLI_LINK_MEDIUM_MAX;
 hw->link.speed = 0;
 hw->link.loop_map = ((void*)0);
 hw->link.fc_id = UINT32_MAX;

 return OCS_HW_RTN_SUCCESS;
}
