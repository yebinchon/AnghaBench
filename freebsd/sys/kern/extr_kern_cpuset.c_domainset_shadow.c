
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int ds_mask; } ;
struct domainlist {int dummy; } ;


 int DOMAINSET_AND (int *,int *) ;
 struct domainset* LIST_FIRST (struct domainlist*) ;
 int LIST_REMOVE (struct domainset*,int ) ;
 struct domainset* _domainset_create (struct domainset*,struct domainlist*) ;
 int domainset_copy (struct domainset const*,struct domainset*) ;
 int ds_link ;

__attribute__((used)) static struct domainset *
domainset_shadow(const struct domainset *pdomain,
    const struct domainset *domain, struct domainlist *freelist)
{
 struct domainset *ndomain;

 ndomain = LIST_FIRST(freelist);
 LIST_REMOVE(ndomain, ds_link);




 domainset_copy(domain, ndomain);




 DOMAINSET_AND(&ndomain->ds_mask, &pdomain->ds_mask);

 return _domainset_create(ndomain, freelist);
}
