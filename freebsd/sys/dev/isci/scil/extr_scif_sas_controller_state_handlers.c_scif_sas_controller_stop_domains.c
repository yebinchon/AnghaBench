
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_10__ {scalar_t__ current_state_id; } ;
struct TYPE_9__ {TYPE_2__* domains; } ;
struct TYPE_7__ {TYPE_5__ state_machine; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;
typedef TYPE_3__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_READY ;
 int SCI_BASE_DOMAIN_STATE_STOPPING ;
 size_t SCI_MAX_DOMAINS ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (TYPE_5__*,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_stop_domains(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   U8 index;
   SCI_STATUS status = SCI_SUCCESS;
   SCIF_SAS_DOMAIN_T * fw_domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_sas_controller_stop_domains(0x%x) enter\n",
      fw_controller
   ));

   for (index = 0; index < SCI_MAX_DOMAINS && status == SCI_SUCCESS; index++)
   {
      fw_domain = &fw_controller->domains[index];



      if (fw_domain->parent.state_machine.current_state_id ==
             SCI_BASE_DOMAIN_STATE_READY
          || fw_domain->parent.state_machine.current_state_id ==
             SCI_BASE_DOMAIN_STATE_DISCOVERING)
      {
         sci_base_state_machine_change_state(
            &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_STOPPING
         );
      }
   }

   return status;
}
