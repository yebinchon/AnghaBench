
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int u_long ;


 int watch_phys_set_mask (scalar_t__,int) ;

int
watch_phys_set(vm_paddr_t pa, int sz)
{
 u_long off;

 off = (u_long)pa & 7;

 if (off + sz > 8)
  return (-1);
 return (watch_phys_set_mask(pa, ((1 << sz) - 1) << off));
}
