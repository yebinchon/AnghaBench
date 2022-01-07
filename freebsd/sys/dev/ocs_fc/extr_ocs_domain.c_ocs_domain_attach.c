
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_domain_t ;


 int __ocs_domain_attach_internal (int *,int ) ;

void
ocs_domain_attach(ocs_domain_t *domain, uint32_t s_id)
{
 __ocs_domain_attach_internal(domain, s_id);
}
