
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;
typedef int vmem_size_t ;
typedef int vmem_addr_t ;


 int M_NOWAIT ;
 int M_WAITOK ;
 int * uma_zalloc (int ,int) ;
 int * vmem_init (int *,char const*,int ,int ,int ,int ,int) ;
 int vmem_zone ;

vmem_t *
vmem_create(const char *name, vmem_addr_t base, vmem_size_t size,
    vmem_size_t quantum, vmem_size_t qcache_max, int flags)
{

 vmem_t *vm;

 vm = uma_zalloc(vmem_zone, flags & (M_WAITOK|M_NOWAIT));
 if (vm == ((void*)0))
  return (((void*)0));
 if (vmem_init(vm, name, base, size, quantum, qcache_max,
     flags) == ((void*)0))
  return (((void*)0));
 return (vm);
}
