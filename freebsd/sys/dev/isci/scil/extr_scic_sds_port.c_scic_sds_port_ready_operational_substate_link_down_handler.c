
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ active_phy_mask; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_SDS_PORT_READY_SUBSTATE_WAITING ;
 int TRUE ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_port_deactivate_phy (TYPE_1__*,int *,int ) ;
 int scic_sds_port_get_ready_substate_machine (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_port_ready_operational_substate_link_down_handler(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *the_phy
)
{
   scic_sds_port_deactivate_phy(this_port, the_phy, TRUE);




   if (this_port->active_phy_mask == 0)
   {
      sci_base_state_machine_change_state(
         scic_sds_port_get_ready_substate_machine(this_port),
         SCIC_SDS_PORT_READY_SUBSTATE_WAITING
      );
   }
}
