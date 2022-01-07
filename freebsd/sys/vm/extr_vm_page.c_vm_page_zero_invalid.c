
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_page_bits_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int valid; } ;


 int DEV_BSHIFT ;
 int DEV_BSIZE ;
 int PAGE_SIZE ;
 int pmap_zero_page_area (TYPE_1__*,int,int) ;
 int vm_page_valid (TYPE_1__*) ;

void
vm_page_zero_invalid(vm_page_t m, boolean_t setvalid)
{
 int b;
 int i;







 for (b = i = 0; i <= PAGE_SIZE / DEV_BSIZE; ++i) {
  if (i == (PAGE_SIZE / DEV_BSIZE) ||
      (m->valid & ((vm_page_bits_t)1 << i))) {
   if (i > b) {
    pmap_zero_page_area(m,
        b << DEV_BSHIFT, (i - b) << DEV_BSHIFT);
   }
   b = i + 1;
  }
 }






 if (setvalid)
  vm_page_valid(m);
}
