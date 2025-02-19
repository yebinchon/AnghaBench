
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_page_bits_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int NBBY ;
 int atomic_set_16 (int *,int) ;
 int atomic_set_32 (int *,int) ;
 int atomic_set_64 (int *,int) ;
 int atomic_set_8 (int *,int) ;

__attribute__((used)) static inline void
vm_page_bits_set(vm_page_t m, vm_page_bits_t *bits, vm_page_bits_t set)
{
 uintptr_t addr;
 int shift;

 addr = (uintptr_t)bits;





 shift = addr & (sizeof(uint32_t) - 1);

 shift = (sizeof(uint32_t) - sizeof(vm_page_bits_t) - shift) * NBBY;



 addr &= ~(sizeof(uint32_t) - 1);
 atomic_set_32((uint32_t *)addr, set << shift);

}
