
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;



__attribute__((used)) static inline void
mips_iowrite_uint8(vm_offset_t vaddr, uint8_t v)
{

 __asm__ __volatile__ ("sb %0, 0(%1)" : : "r" (v), "r" (vaddr));
}
