
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ready_substate_machine; int not_ready_reason; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;
typedef int SCI_BASE_PHY_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_PORT_NOT_READY_RECONFIGURING ;
 int SCIC_SDS_PORT_READY_SUBSTATE_CONFIGURING ;
 scalar_t__ SCI_SUCCESS ;
 int TRUE ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_sds_port_clear_phy (TYPE_1__*,int *) ;
 int scic_sds_port_deactivate_phy (TYPE_1__*,int *,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_ready_substate_remove_phy_handler(
   SCI_BASE_PORT_T *port,
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PORT_T * this_port = (SCIC_SDS_PORT_T *)port;
   SCIC_SDS_PHY_T * this_phy = (SCIC_SDS_PHY_T *)phy;
   SCI_STATUS status;

   status = scic_sds_port_clear_phy(this_port, this_phy);

   if (status == SCI_SUCCESS)
   {
      scic_sds_port_deactivate_phy(this_port, this_phy, TRUE);

      this_port->not_ready_reason = SCIC_PORT_NOT_READY_RECONFIGURING;

      sci_base_state_machine_change_state(
         &this_port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_CONFIGURING
      );
   }

   return status;
}
