
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
struct vm_object {int dummy; } ;
struct vm_domainset_iter {int dummy; } ;



void
vm_domainset_iter_page_init(struct vm_domainset_iter *di, struct vm_object *obj,
    vm_pindex_t pindex, int *domain, int *flags)
{

 *domain = 0;
}
