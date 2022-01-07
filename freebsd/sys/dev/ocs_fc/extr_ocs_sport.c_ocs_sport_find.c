
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_sport_t ;
struct TYPE_4__ {int lookup_lock; int * lookup; int ocs; } ;
typedef TYPE_1__ ocs_domain_t ;


 int ocs_assert (TYPE_1__*,int *) ;
 int ocs_lock (int *) ;
 int ocs_log_test (int ,char*) ;
 int ocs_unlock (int *) ;
 int * spv_get (int *,int ) ;

ocs_sport_t *
ocs_sport_find(ocs_domain_t *domain, uint32_t d_id)
{
 ocs_sport_t *sport;

 ocs_assert(domain, ((void*)0));
 ocs_lock(&domain->lookup_lock);
  if (domain->lookup == ((void*)0)) {
   ocs_log_test(domain->ocs, "assertion failed: domain->lookup is not valid\n");
   ocs_unlock(&domain->lookup_lock);
   return ((void*)0);
  }

  sport = spv_get(domain->lookup, d_id);
 ocs_unlock(&domain->lookup_lock);
 return sport;
}
