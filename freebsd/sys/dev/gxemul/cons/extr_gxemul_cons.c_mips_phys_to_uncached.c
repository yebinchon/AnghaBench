
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int MIPS_PHYS_TO_DIRECT_UNCACHED (int ) ;

__attribute__((used)) static inline vm_offset_t
mips_phys_to_uncached(vm_paddr_t phys)
{

 return (MIPS_PHYS_TO_DIRECT_UNCACHED(phys));
}
