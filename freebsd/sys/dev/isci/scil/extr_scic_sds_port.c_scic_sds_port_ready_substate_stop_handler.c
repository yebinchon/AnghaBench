
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_ready_substate_stop_handler(
   SCI_BASE_PORT_T *port
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   sci_base_state_machine_change_state(
      &this_port->parent.state_machine,
      SCI_BASE_PORT_STATE_STOPPING
   );

   return SCI_SUCCESS;
}
