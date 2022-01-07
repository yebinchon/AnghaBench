
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ocs; } ;
typedef TYPE_1__ ocs_domain_t ;


 int ocs_device_unlock (int ) ;

__attribute__((used)) static inline void
ocs_domain_unlock(ocs_domain_t *domain)
{

 ocs_device_unlock(domain->ocs);
}
