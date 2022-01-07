
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ready_substate_machine; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;


 int SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ;
 int TRUE ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_port_activate_phy (TYPE_1__*,int *,int ,int ) ;

__attribute__((used)) static
void scic_sds_port_ready_waiting_substate_link_up_handler(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T *the_phy
)
{


   scic_sds_port_activate_phy(this_port, the_phy, TRUE, TRUE);

   sci_base_state_machine_change_state(
      &this_port->ready_substate_machine,
      SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
   );
}
