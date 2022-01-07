
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;


 scalar_t__* phys_avail ;
 scalar_t__ vm_phys_avail_size (int) ;

int
vm_phys_avail_largest(void)
{
 vm_paddr_t sz, largesz;
 int largest;
 int i;

 largest = 0;
 largesz = 0;
 for (i = 0; phys_avail[i + 1]; i += 2) {
  sz = vm_phys_avail_size(i);
  if (sz > largesz) {
   largesz = sz;
   largest = i;
  }
 }

 return (largest);
}
