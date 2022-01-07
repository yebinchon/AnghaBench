
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_5__ {size_t current_domain_to_clear_affiliation; int * domains; } ;
typedef int SCI_STATUS ;
typedef int SCIF_SAS_DOMAIN_T ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_TRACE (int ) ;
 size_t SCI_MAX_DOMAINS ;
 int SCI_SUCCESS ;
 int SCI_WARNING_SEQUENCE_INCOMPLETE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_sas_controller_continue_to_stop (TYPE_1__*) ;
 int scif_sas_domain_cancel_smp_activities (int *) ;
 int scif_sas_domain_start_clear_affiliation (int *) ;

SCI_STATUS scif_sas_controller_clear_affiliation(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   U8 index;
   SCI_STATUS status;
   SCIF_SAS_DOMAIN_T * fw_domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_sas_controller_clear_affiliation(0x%x) enter\n",
      fw_controller
   ));

   index = fw_controller->current_domain_to_clear_affiliation;

   if (index < SCI_MAX_DOMAINS)
   {
      fw_domain = &fw_controller->domains[index];


      scif_sas_domain_cancel_smp_activities(fw_domain);

      scif_sas_domain_start_clear_affiliation(fw_domain);

      status = SCI_WARNING_SEQUENCE_INCOMPLETE;
   }
   else
   {
      scif_sas_controller_continue_to_stop(fw_controller);
      status = SCI_SUCCESS;
   }

   return status;
}
