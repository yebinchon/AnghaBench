
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; int not_ready_reason; int timer_handle; int ** phy_table; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_PORT_NOT_READY_HARD_RESET_REQUESTED ;
 int SCI_BASE_PORT_STATE_RESETTING ;
 scalar_t__ SCI_FAILURE_INVALID_PHY ;
 int * SCI_INVALID_HANDLE ;
 size_t SCI_MAX_PHYS ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_cb_timer_start (int ,int ,size_t) ;
 scalar_t__ scic_sds_phy_reset (int *) ;
 int scic_sds_port_active_phy (TYPE_2__*,int *) ;
 int scic_sds_port_get_controller (TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_ready_operational_substate_reset_handler(
   SCI_BASE_PORT_T * port,
   U32 timeout
)
{
   SCI_STATUS status = SCI_FAILURE_INVALID_PHY;
   U32 phy_index;
   SCIC_SDS_PORT_T * this_port = (SCIC_SDS_PORT_T *)port;
   SCIC_SDS_PHY_T * selected_phy = SCI_INVALID_HANDLE;



   for (
         phy_index = 0;
            (phy_index < SCI_MAX_PHYS)
         && (selected_phy == SCI_INVALID_HANDLE);
         phy_index++
       )
   {
      selected_phy = this_port->phy_table[phy_index];

      if (
            (selected_phy != SCI_INVALID_HANDLE)
         && !scic_sds_port_active_phy(this_port, selected_phy)
         )
      {

         selected_phy = SCI_INVALID_HANDLE;
      }
   }


   if (selected_phy != SCI_INVALID_HANDLE)
   {
      status = scic_sds_phy_reset(selected_phy);

      if (status == SCI_SUCCESS)
      {
         scic_cb_timer_start(
            scic_sds_port_get_controller(this_port),
            this_port->timer_handle,
            timeout
         );

         this_port->not_ready_reason = SCIC_PORT_NOT_READY_HARD_RESET_REQUESTED;

         sci_base_state_machine_change_state(
            &this_port->parent.state_machine,
            SCI_BASE_PORT_STATE_RESETTING
         );
      }
   }

   return status;
}
