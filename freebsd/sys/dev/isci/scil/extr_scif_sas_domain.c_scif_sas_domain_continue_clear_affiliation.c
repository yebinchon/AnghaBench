
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int current_domain_to_clear_affiliation; } ;
struct TYPE_6__ {TYPE_2__* controller; } ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIF_SAS_DOMAIN_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION ;
 int scif_sas_controller_clear_affiliation (TYPE_2__*) ;
 int * scif_sas_domain_find_device_has_scheduled_activity (TYPE_1__*,int ) ;
 int scif_sas_smp_remote_device_start_clear_affiliation (int *) ;

void scif_sas_domain_continue_clear_affiliation(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_REMOTE_DEVICE_T * smp_device =
      scif_sas_domain_find_device_has_scheduled_activity(
         fw_domain,
         SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION
      );

   if (smp_device != ((void*)0))
      scif_sas_smp_remote_device_start_clear_affiliation(smp_device);
   else
   {

      SCIF_SAS_CONTROLLER_T * fw_controller = fw_domain->controller;
      fw_controller->current_domain_to_clear_affiliation++;


      scif_sas_controller_clear_affiliation(fw_domain->controller);
   }
}
