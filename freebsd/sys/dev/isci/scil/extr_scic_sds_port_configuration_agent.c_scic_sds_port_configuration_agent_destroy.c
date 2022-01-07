
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timer_pending; int * timer; } ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int scic_cb_timer_destroy (int *,int *) ;
 int scic_cb_timer_stop (int *,int *) ;

void scic_sds_port_configuration_agent_destroy(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   if (port_agent->timer_pending == TRUE)
   {
      scic_cb_timer_stop(controller, port_agent->timer);
   }

   scic_cb_timer_destroy(controller, port_agent->timer);

   port_agent->timer_pending = FALSE;
   port_agent->timer = ((void*)0);
}
