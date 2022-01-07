
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int starting_substate_machine; } ;
struct TYPE_4__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_PHY_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;


 int SCI_BASE_PHY_STATE_STOPPED ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_stop (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_phy_starting_substate_general_stop_handler(
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   sci_base_state_machine_stop(
      &this_phy->starting_substate_machine
   );

   sci_base_state_machine_change_state(
      &phy->state_machine,
      SCI_BASE_PHY_STATE_STOPPED
   );

   return SCI_SUCCESS;
}
