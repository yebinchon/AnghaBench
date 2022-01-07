
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uma_zone_t ;
typedef int uint8_t ;


 int DOMAINSET_FIXED (int) ;
 int UMA_SLAB_KERNEL ;
 int VM_MEMATTR_DEFAULT ;
 scalar_t__ kmem_alloc_contig_domainset (int ,int ,int,int,int,int,int ,int ) ;

__attribute__((used)) static void *
pmap_pdpt_allocf(uma_zone_t zone, vm_size_t bytes, int domain, uint8_t *flags,
    int wait)
{


 *flags = UMA_SLAB_KERNEL;
 return ((void *)kmem_alloc_contig_domainset(DOMAINSET_FIXED(domain),
     bytes, wait, 0x0ULL, 0xffffffffULL, 1, 0, VM_MEMATTR_DEFAULT));
}
