
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * timer_handle; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int scic_cb_timer_destroy (int ,int *) ;
 int scic_cb_timer_stop (int ,int *) ;
 int scic_sds_port_destroy_dummy_resources (TYPE_1__*) ;
 int scic_sds_port_get_controller (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_port_stopping_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port;
   this_port = (SCIC_SDS_PORT_T *)object;

   scic_cb_timer_stop(
      scic_sds_port_get_controller(this_port),
      this_port->timer_handle
   );

   scic_cb_timer_destroy(
      scic_sds_port_get_controller(this_port),
      this_port->timer_handle
   );
   this_port->timer_handle = ((void*)0);

   scic_sds_port_destroy_dummy_resources(this_port);
}
