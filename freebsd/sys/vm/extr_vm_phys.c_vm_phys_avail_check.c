
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int PAGE_MASK ;
 int panic (char*,int,int ,...) ;
 int* phys_avail ;

__attribute__((used)) static void
vm_phys_avail_check(int i)
{
 if (phys_avail[i] & PAGE_MASK)
  panic("Unaligned phys_avail[%d]: %#jx", i,
      (intmax_t)phys_avail[i]);
 if (phys_avail[i+1] & PAGE_MASK)
  panic("Unaligned phys_avail[%d + 1]: %#jx", i,
      (intmax_t)phys_avail[i]);
 if (phys_avail[i + 1] < phys_avail[i])
  panic("phys_avail[%d] start %#jx < end %#jx", i,
      (intmax_t)phys_avail[i], (intmax_t)phys_avail[i+1]);
}
