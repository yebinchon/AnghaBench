
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_9__ {TYPE_3__* domains; } ;
struct TYPE_6__ {scalar_t__ current_state_id; } ;
struct TYPE_7__ {TYPE_1__ state_machine; } ;
struct TYPE_8__ {TYPE_2__ parent; } ;
typedef TYPE_4__ SCIF_SAS_CONTROLLER_T ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 size_t SCI_MAX_DOMAINS ;
 int TRUE ;

__attribute__((used)) static
BOOL scif_sas_controller_is_overriding_interrupt_coalescence(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   U8 index;

   for(index = 0; index < SCI_MAX_DOMAINS; index++)
   {
      if(fw_controller->domains[index].parent.state_machine.current_state_id ==
            SCI_BASE_DOMAIN_STATE_DISCOVERING)
         return TRUE;
   }

   return FALSE;
}
