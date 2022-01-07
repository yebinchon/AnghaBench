
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * timer_handle; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scic_cb_timer_destroy (int *,int *) ;

void scic_sds_port_release_resource(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_T *this_port
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_release_resource(0x%x, 0x%x)\n",
      controller, this_port
   ));


   if (this_port->timer_handle != ((void*)0))
   {
      scic_cb_timer_destroy(controller, this_port->timer_handle);
      this_port->timer_handle = ((void*)0);
   }
}
