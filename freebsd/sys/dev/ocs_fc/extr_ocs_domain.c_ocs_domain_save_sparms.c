
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flogi_service_params; } ;
typedef TYPE_1__ ocs_domain_t ;
typedef int fc_plogi_payload_t ;


 int ocs_memcpy (int ,void*,int) ;

void
ocs_domain_save_sparms(ocs_domain_t *domain, void *payload)
{
 ocs_memcpy(domain->flogi_service_params, payload, sizeof (fc_plogi_payload_t));
}
