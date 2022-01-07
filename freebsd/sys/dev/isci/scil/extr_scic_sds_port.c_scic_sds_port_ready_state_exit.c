
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int sci_base_state_machine_stop (int *) ;
 int scic_cb_stall_execution (int) ;
 int scic_sds_port_invalidate_dummy_remote_node (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_port_ready_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   sci_base_state_machine_stop(&this_port->ready_substate_machine);

   scic_cb_stall_execution(10);
   scic_sds_port_invalidate_dummy_remote_node(this_port);
}
