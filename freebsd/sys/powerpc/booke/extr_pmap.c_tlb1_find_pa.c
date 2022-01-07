
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_4__ {int mas1; } ;
typedef TYPE_1__ tlb_entry_t ;


 int MAS1_VALID ;
 int TLB1_ENTRIES ;
 int tlb1_read_entry (TYPE_1__*,int) ;

__attribute__((used)) static int
tlb1_find_pa(vm_paddr_t pa, tlb_entry_t *e)
{
 int i;

 for (i = 0; i < TLB1_ENTRIES; i++) {
  tlb1_read_entry(e, i);
  if ((e->mas1 & MAS1_VALID) == 0)
   return (i);
 }
 return (-1);
}
