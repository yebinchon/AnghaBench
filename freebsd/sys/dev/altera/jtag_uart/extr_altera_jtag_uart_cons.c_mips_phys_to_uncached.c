
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr_t ;
typedef int paddr_t ;


 int MIPS_XKPHYS_UNCACHED_BASE ;

__attribute__((used)) static inline vaddr_t
mips_phys_to_uncached(paddr_t phys)
{

 return (phys | MIPS_XKPHYS_UNCACHED_BASE);
}
