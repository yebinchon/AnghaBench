
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;


 int panic (char*) ;
 scalar_t__ pmap_kextract (int ) ;

vm_paddr_t
kvtop(void *addr)
{
 vm_paddr_t pa;

 pa = pmap_kextract((vm_offset_t)addr);
 if (pa == 0)
  panic("kvtop: zero page frame");
 return (pa);
}
