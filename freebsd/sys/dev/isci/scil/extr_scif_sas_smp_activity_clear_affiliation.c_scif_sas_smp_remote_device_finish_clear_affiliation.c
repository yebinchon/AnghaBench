
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * domain; } ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_DOMAIN_T ;


 int scif_sas_domain_continue_clear_affiliation (int *) ;
 int scif_sas_smp_remote_device_clear (TYPE_1__*) ;

void scif_sas_smp_remote_device_finish_clear_affiliation(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;

   scif_sas_smp_remote_device_clear(fw_device);


   scif_sas_domain_continue_clear_affiliation(fw_domain);
}
