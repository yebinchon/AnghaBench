
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int* ds_order; scalar_t__ ds_policy; int ds_prefer; int ds_mask; int ds_cnt; } ;
typedef int domainset_t ;


 int DOMAINSET_COUNT (int *) ;
 int DOMAINSET_FLS (int *) ;
 scalar_t__ DOMAINSET_ISSET (int,int *) ;
 int DOMAINSET_NAND (int *,int *) ;
 scalar_t__ DOMAINSET_POLICY_PREFER ;
 scalar_t__ DOMAINSET_POLICY_ROUNDROBIN ;
 int DOMAINSET_SET (int,int *) ;
 scalar_t__ DOMAINSET_SUBSET (int *,int *) ;
 int DOMAINSET_ZERO (int *) ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 int vm_ndomains ;

__attribute__((used)) static bool
domainset_empty_vm(struct domainset *domain)
{
 domainset_t empty;
 int i, j;

 DOMAINSET_ZERO(&empty);
 for (i = 0; i < vm_ndomains; i++)
  if (VM_DOMAIN_EMPTY(i))
   DOMAINSET_SET(i, &empty);
 if (DOMAINSET_SUBSET(&empty, &domain->ds_mask))
  return (1);


 DOMAINSET_NAND(&domain->ds_mask, &empty);
 domain->ds_cnt = DOMAINSET_COUNT(&domain->ds_mask);
 for (i = j = 0; i < DOMAINSET_FLS(&domain->ds_mask); i++)
  if (DOMAINSET_ISSET(i, &domain->ds_mask))
   domain->ds_order[j++] = i;


 if (domain->ds_policy == DOMAINSET_POLICY_PREFER &&
     DOMAINSET_ISSET(domain->ds_prefer, &empty)) {
  domain->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
  domain->ds_prefer = -1;
 }

 return (0);
}
