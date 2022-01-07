
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_SUCCESS ;
 int scic_sds_controller_transition_to_ready (int *,int ) ;

void scic_sds_controller_port_agent_configured_ports(
   SCIC_SDS_CONTROLLER_T * this_controller
)
{

   scic_sds_controller_transition_to_ready(
      this_controller, SCI_SUCCESS
   );
}
