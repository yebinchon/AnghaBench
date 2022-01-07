
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int not_ready_reason; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int scic_cb_port_not_ready (int ,TYPE_1__*,int ) ;
 int scic_sds_port_abort_dummy_request (TYPE_1__*) ;
 int scic_sds_port_get_controller (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_port_ready_substate_operational_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)object;




   scic_sds_port_abort_dummy_request(this_port);

   scic_cb_port_not_ready(
      scic_sds_port_get_controller(this_port),
      this_port,
      this_port->not_ready_reason
   );
}
