
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* owning_controller; } ;
struct TYPE_4__ {scalar_t__ logical_port_entries; scalar_t__ task_context_entries; scalar_t__ remote_node_entries; } ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static
BOOL scic_sds_port_requires_scheduler_workaround(
   SCIC_SDS_PORT_T * this_port
)
{
   if (
         (
           this_port->owning_controller->logical_port_entries
         < this_port->owning_controller->task_context_entries
         )
      && (
           this_port->owning_controller->logical_port_entries
         < this_port->owning_controller->remote_node_entries
         )
      )
   {
      return TRUE;
   }

   return FALSE;
}
