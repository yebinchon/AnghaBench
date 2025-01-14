
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int timer; scalar_t__ timer_pending; } ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (int *) ;
 int scic_cb_timer_start (int *,int ,int ) ;
 int scic_cb_timer_stop (int *,int ) ;

__attribute__((used)) static
void scic_sds_apc_agent_start_timer(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent,
   SCIC_SDS_PHY_T * phy,
   U32 timeout
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_apc_agent_start_timer(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\n",
      controller, port_agent, phy, timeout
   ));

   if (port_agent->timer_pending)
   {
      scic_cb_timer_stop(controller, port_agent->timer);
   }

   port_agent->timer_pending = TRUE;

   scic_cb_timer_start(controller, port_agent->timer, timeout);
}
