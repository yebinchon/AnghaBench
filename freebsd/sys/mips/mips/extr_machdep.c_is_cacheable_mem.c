
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__* physmem_desc ;

int
is_cacheable_mem(vm_paddr_t pa)
{
 int i;

 for (i = 0; physmem_desc[i + 1] != 0; i += 2) {
  if (pa >= physmem_desc[i] && pa < physmem_desc[i + 1])
   return (1);
 }

 return (0);
}
