
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {scalar_t__ started_request_count; TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_STOPPED ;
 int SCI_BASE_PORT_STATE_STOPPING ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_port_set_base_state_handlers (TYPE_2__*,int ) ;

__attribute__((used)) static
void scic_sds_port_stopping_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   scic_sds_port_set_base_state_handlers(
      this_port, SCI_BASE_PORT_STATE_STOPPING
   );

   if (this_port->started_request_count == 0)
   {
      sci_base_state_machine_change_state(
         &this_port->parent.state_machine,
         SCI_BASE_PORT_STATE_STOPPED
      );
   }
}
