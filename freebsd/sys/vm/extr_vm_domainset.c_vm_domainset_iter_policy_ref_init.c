
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_domainset_iter {int dummy; } ;
struct domainset_ref {int dummy; } ;



void
vm_domainset_iter_policy_ref_init(struct vm_domainset_iter *di,
    struct domainset_ref *dr, int *domain, int *flags)
{

 *domain = 0;
}
