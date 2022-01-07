
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
mips_ioread_uint32(vaddr_t vaddr)
{
 uint32_t v;

 __asm__ __volatile__ ("lw %0, 0(%1)" : "=r" (v) : "r" (vaddr));
 return (v);
}
