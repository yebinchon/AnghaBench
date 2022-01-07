
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct domainset {scalar_t__ ds_policy; int ds_mask; int ds_prefer; } ;
struct TYPE_2__ {int ds_mask; } ;


 int DOMAINSET_ISSET (int ,int *) ;
 scalar_t__ DOMAINSET_POLICY_INVALID ;
 scalar_t__ DOMAINSET_POLICY_MAX ;
 scalar_t__ DOMAINSET_POLICY_PREFER ;
 int DOMAINSET_SUBSET (int *,int *) ;
 int M_WAITOK ;
 int M_ZERO ;
 struct domainset* _domainset_create (struct domainset*,int *) ;
 TYPE_1__ domainset0 ;
 int domainset_copy (struct domainset const*,struct domainset*) ;
 int domainset_zone ;
 struct domainset* uma_zalloc (int ,int) ;

struct domainset *
domainset_create(const struct domainset *domain)
{
 struct domainset *ndomain;






 if (domain->ds_policy <= DOMAINSET_POLICY_INVALID ||
     domain->ds_policy > DOMAINSET_POLICY_MAX)
  return (((void*)0));
 if (domain->ds_policy == DOMAINSET_POLICY_PREFER &&
     !DOMAINSET_ISSET(domain->ds_prefer, &domain->ds_mask))
  return (((void*)0));
 if (!DOMAINSET_SUBSET(&domainset0.ds_mask, &domain->ds_mask))
  return (((void*)0));
 ndomain = uma_zalloc(domainset_zone, M_WAITOK | M_ZERO);
 domainset_copy(domain, ndomain);
 return _domainset_create(ndomain, ((void*)0));
}
