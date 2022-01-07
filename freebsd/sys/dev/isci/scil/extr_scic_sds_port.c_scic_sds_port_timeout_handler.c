
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {TYPE_1__ parent; } ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCI_BASE_PORT_STATE_FAILED ;
 scalar_t__ SCI_BASE_PORT_STATE_RESETTING ;
 scalar_t__ SCI_BASE_PORT_STATE_STOPPED ;
 scalar_t__ SCI_BASE_PORT_STATE_STOPPING ;
 int SCI_FAILURE_TIMEOUT ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ sci_base_state_machine_get_state (int *) ;
 int scic_cb_port_stop_complete (int ,void*,int ) ;
 int scic_sds_port_get_controller (TYPE_2__*) ;

void scic_sds_port_timeout_handler(
   void *port
)
{
   U32 current_state;
   SCIC_SDS_PORT_T * this_port;

   this_port = (SCIC_SDS_PORT_T *)port;
   current_state = sci_base_state_machine_get_state(
                           &this_port->parent.state_machine);

   if (current_state == SCI_BASE_PORT_STATE_RESETTING)
   {


      sci_base_state_machine_change_state(
         &this_port->parent.state_machine,
         SCI_BASE_PORT_STATE_FAILED
      );
   }
   else if (current_state == SCI_BASE_PORT_STATE_STOPPED)
   {


      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_port),
         SCIC_LOG_OBJECT_PORT,
         "SCIC Port 0x%x failed to stop before tiemout.\n",
         this_port
      ));
   }
   else if (current_state == SCI_BASE_PORT_STATE_STOPPING)
   {

      scic_cb_port_stop_complete(
         scic_sds_port_get_controller(this_port),
         port,
         SCI_FAILURE_TIMEOUT
      );
   }
   else
   {


      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_port),
         SCIC_LOG_OBJECT_PORT,
         "SCIC Port 0x%x is processing a timeout operation in state %d.\n",
         this_port, current_state
      ));
   }
}
