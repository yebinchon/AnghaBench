
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ device_start_in_progress_count; } ;
typedef TYPE_1__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_sas_domain_finish_discover (TYPE_1__*) ;
 scalar_t__ scif_sas_domain_get_smp_request_count (TYPE_1__*) ;
 int scif_sas_domain_is_in_smp_activity (TYPE_1__*) ;
 int scif_sas_domain_start_smp_activity (TYPE_1__*) ;

void scif_sas_domain_continue_discover(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_continue_discover(0x%x) enter\n",
      fw_domain
   ));

   if ( fw_domain->device_start_in_progress_count == 0
       && !scif_sas_domain_is_in_smp_activity(fw_domain) )
   {



      scif_sas_domain_start_smp_activity(fw_domain);
      if ( ! scif_sas_domain_is_in_smp_activity(fw_domain)
          && scif_sas_domain_get_smp_request_count(fw_domain) == 0)
      {


         scif_sas_domain_finish_discover(fw_domain);
      }
   }
}
