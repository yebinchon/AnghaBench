
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uma_zone_t ;
typedef int uint8_t ;


 int BUS_SPACE_MAXADDR ;
 int DOMAINSET_FIXED (int) ;
 int UMA_SLAB_KERNEL ;
 int VM_MEMATTR_UNCACHEABLE ;
 scalar_t__ kmem_alloc_attr_domainset (int ,int ,int,int ,int ,int ) ;
 int panic (char*) ;

void *
busdma_bufalloc_alloc_uncacheable(uma_zone_t zone, vm_size_t size, int domain,
    uint8_t *pflag, int wait)
{
 panic("VM_MEMATTR_UNCACHEABLE unavailable");

}
