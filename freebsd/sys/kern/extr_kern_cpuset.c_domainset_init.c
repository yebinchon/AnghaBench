
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int ds_prefer; void* ds_policy; int ds_mask; } ;


 int DOMAINSET_COPY (int *,int *) ;
 void* DOMAINSET_POLICY_PREFER ;
 void* DOMAINSET_POLICY_ROUNDROBIN ;
 int DOMAINSET_SET (int,int *) ;
 int DOMAINSET_ZERO (int *) ;
 int _domainset_create (struct domainset*,int *) ;
 int all_domains ;
 struct domainset* domainset_fixed ;
 struct domainset* domainset_prefer ;
 struct domainset domainset_roundrobin ;
 int vm_ndomains ;

void
domainset_init(void)
{
 struct domainset *dset;
 int i;

 dset = &domainset_roundrobin;
 DOMAINSET_COPY(&all_domains, &dset->ds_mask);
 dset->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
 dset->ds_prefer = -1;
 _domainset_create(dset, ((void*)0));

 for (i = 0; i < vm_ndomains; i++) {
  dset = &domainset_fixed[i];
  DOMAINSET_ZERO(&dset->ds_mask);
  DOMAINSET_SET(i, &dset->ds_mask);
  dset->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
  _domainset_create(dset, ((void*)0));

  dset = &domainset_prefer[i];
  DOMAINSET_COPY(&all_domains, &dset->ds_mask);
  dset->ds_policy = DOMAINSET_POLICY_PREFER;
  dset->ds_prefer = i;
  _domainset_create(dset, ((void*)0));
 }
}
