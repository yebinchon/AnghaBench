
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_bits_t ;


 int DEV_BSHIFT ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;

vm_page_bits_t
vm_page_bits(int base, int size)
{
 int first_bit;
 int last_bit;

 KASSERT(
     base + size <= PAGE_SIZE,
     ("vm_page_bits: illegal base/size %d/%d", base, size)
 );

 if (size == 0)
  return (0);

 first_bit = base >> DEV_BSHIFT;
 last_bit = (base + size - 1) >> DEV_BSHIFT;

 return (((vm_page_bits_t)2 << last_bit) -
     ((vm_page_bits_t)1 << first_bit));
}
