
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * timer; } ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 int scic_cb_timer_destroy (int *,int *) ;

void scic_sds_port_configuration_agent_release_resource(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_configuration_agent_release_resource(0x%x, 0x%x)\n",
      controller, port_agent
   ));


   if (port_agent->timer != ((void*)0))
   {
      scic_cb_timer_destroy(controller, port_agent->timer);
      port_agent->timer = ((void*)0);
   }
}
