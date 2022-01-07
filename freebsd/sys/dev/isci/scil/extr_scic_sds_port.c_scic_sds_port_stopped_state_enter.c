
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ previous_state_id; } ;
struct TYPE_7__ {TYPE_1__ state_machine; } ;
struct TYPE_8__ {TYPE_2__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_STOPPED ;
 scalar_t__ SCI_BASE_PORT_STATE_STOPPING ;
 int scic_sds_port_disable_port_task_scheduler (TYPE_3__*) ;
 int scic_sds_port_set_base_state_handlers (TYPE_3__*,int ) ;

__attribute__((used)) static
void scic_sds_port_stopped_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   scic_sds_port_set_base_state_handlers(
      this_port, SCI_BASE_PORT_STATE_STOPPED
   );

   if (
         SCI_BASE_PORT_STATE_STOPPING
      == this_port->parent.state_machine.previous_state_id
      )
   {



      scic_sds_port_disable_port_task_scheduler(this_port);
   }
}
