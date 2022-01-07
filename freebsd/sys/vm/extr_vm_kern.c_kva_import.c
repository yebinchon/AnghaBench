
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_size_t ;
typedef int vmem_addr_t ;
typedef int vm_offset_t ;
typedef int intmax_t ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 int KVA_QUANTUM ;
 int MAP_NOFAULT ;
 int VMFS_SUPER_SPACE ;
 int VM_PROT_ALL ;
 int kernel_map ;
 int vm_map_find (int ,int *,int ,int *,int,int ,int ,int ,int ,int ) ;
 int vm_map_min (int ) ;

__attribute__((used)) static int
kva_import(void *unused, vmem_size_t size, int flags, vmem_addr_t *addrp)
{
 vm_offset_t addr;
 int result;

 KASSERT((size % KVA_QUANTUM) == 0,
     ("kva_import: Size %jd is not a multiple of %d",
     (intmax_t)size, (int)KVA_QUANTUM));
 addr = vm_map_min(kernel_map);
 result = vm_map_find(kernel_map, ((void*)0), 0, &addr, size, 0,
     VMFS_SUPER_SPACE, VM_PROT_ALL, VM_PROT_ALL, MAP_NOFAULT);
 if (result != KERN_SUCCESS)
                return (ENOMEM);

 *addrp = addr;

 return (0);
}
