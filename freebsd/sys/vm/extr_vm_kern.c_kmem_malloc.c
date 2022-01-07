
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int DOMAINSET_RR () ;
 int kmem_malloc_domainset (int ,int ,int) ;

vm_offset_t
kmem_malloc(vm_size_t size, int flags)
{

 return (kmem_malloc_domainset(DOMAINSET_RR(), size, flags));
}
