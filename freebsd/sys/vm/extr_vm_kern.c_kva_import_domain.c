
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_size_t ;
typedef int vmem_addr_t ;
typedef int intmax_t ;


 int KASSERT (int,char*) ;
 int KVA_QUANTUM ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_MIN ;
 int vmem_xalloc (void*,int,int,int ,int ,int ,int ,int,int *) ;

__attribute__((used)) static int
kva_import_domain(void *arena, vmem_size_t size, int flags, vmem_addr_t *addrp)
{

 KASSERT((size % KVA_QUANTUM) == 0,
     ("kva_import_domain: Size %jd is not a multiple of %d",
     (intmax_t)size, (int)KVA_QUANTUM));
 return (vmem_xalloc(arena, size, KVA_QUANTUM, 0, 0, VMEM_ADDR_MIN,
     VMEM_ADDR_MAX, flags, addrp));
}
