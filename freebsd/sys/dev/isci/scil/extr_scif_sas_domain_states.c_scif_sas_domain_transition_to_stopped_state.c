
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state_machine; } ;
struct TYPE_6__ {scalar_t__ element_count; } ;
struct TYPE_8__ {scalar_t__ device_start_count; TYPE_2__ parent; TYPE_1__ request_list; } ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_DOMAIN_STATE_STOPPED ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;

void scif_sas_domain_transition_to_stopped_state(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_transition_to_stopped_state(0x%x) enter\n",
      fw_domain
   ));



   if ( (fw_domain->request_list.element_count == 0)
      && (fw_domain->device_start_count == 0) )
   {
      SCIF_LOG_INFO((
         sci_base_object_get_logger(fw_domain),
         SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Domain:0x%x immediate transition to STOPPED\n",
         fw_domain
      ));

      sci_base_state_machine_change_state(
         &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_STOPPED
      );
   }
}
