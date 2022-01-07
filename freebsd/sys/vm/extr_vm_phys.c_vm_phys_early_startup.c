
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 TYPE_1__* mem_affinity ;
 scalar_t__* phys_avail ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;
 int vm_phys_avail_find (scalar_t__) ;
 int vm_phys_avail_split (scalar_t__,int) ;

void
vm_phys_early_startup(void)
{
 int i;

 for (i = 0; phys_avail[i + 1] != 0; i += 2) {
  phys_avail[i] = round_page(phys_avail[i]);
  phys_avail[i + 1] = trunc_page(phys_avail[i + 1]);
 }
}
