
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
typedef int u_long ;


 int DOMAINSET_RR () ;
 int kmem_alloc_contig_domainset (int ,int ,int,int ,int ,int ,int ,int ) ;

vm_offset_t
kmem_alloc_contig(vm_size_t size, int flags, vm_paddr_t low, vm_paddr_t high,
    u_long alignment, vm_paddr_t boundary, vm_memattr_t memattr)
{

 return (kmem_alloc_contig_domainset(DOMAINSET_RR(), size, flags, low,
     high, alignment, boundary, memattr));
}
