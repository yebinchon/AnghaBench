
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TLB_SIZE ;
 int tlb_dump_entry (int) ;

void tlb_dump(void)
{
 int i;

 for (i = 0; i < TLB_SIZE; i++)
  tlb_dump_entry(i);
}
