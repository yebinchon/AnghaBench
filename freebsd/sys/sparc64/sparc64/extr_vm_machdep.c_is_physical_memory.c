
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct ofw_mem_region {scalar_t__ mr_start; scalar_t__ mr_size; } ;


 struct ofw_mem_region* sparc64_memreg ;
 int sparc64_nmemreg ;

int
is_physical_memory(vm_paddr_t addr)
{
 struct ofw_mem_region *mr;

 for (mr = sparc64_memreg; mr < sparc64_memreg + sparc64_nmemreg; mr++)
  if (addr >= mr->mr_start && addr < mr->mr_start + mr->mr_size)
   return (1);
 return (0);
}
