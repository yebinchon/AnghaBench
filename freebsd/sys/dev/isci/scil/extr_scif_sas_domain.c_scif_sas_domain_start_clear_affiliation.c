
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIF_SAS_DOMAIN_T ;


 int scif_sas_domain_continue_clear_affiliation (int *) ;
 int scif_sas_domain_schedule_clear_affiliation (int *) ;

void scif_sas_domain_start_clear_affiliation(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   scif_sas_domain_schedule_clear_affiliation(fw_domain);
   scif_sas_domain_continue_clear_affiliation(fw_domain);
}
