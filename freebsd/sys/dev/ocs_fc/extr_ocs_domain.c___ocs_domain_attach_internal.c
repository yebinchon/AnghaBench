
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int virt; } ;
struct TYPE_5__ {int drvsm; scalar_t__ flogi_service_params; TYPE_1__ dma; } ;
typedef TYPE_2__ ocs_domain_t ;
typedef int fc_plogi_payload_t ;


 int OCS_EVT_DOMAIN_REQ_ATTACH ;
 int ocs_memcpy (int ,int *,int) ;
 int ocs_sm_post_event (int *,int ,int *) ;

void
__ocs_domain_attach_internal(ocs_domain_t *domain, uint32_t s_id)
{
 ocs_memcpy(domain->dma.virt, ((uint8_t*)domain->flogi_service_params)+4, sizeof (fc_plogi_payload_t) - 4);
 (void)ocs_sm_post_event(&domain->drvsm, OCS_EVT_DOMAIN_REQ_ATTACH, &s_id);
}
