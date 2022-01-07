
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ pt_entry_t ;


 scalar_t__ KPTphys ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PG_A ;
 scalar_t__ PG_M ;
 scalar_t__ PG_RW ;
 scalar_t__ PG_V ;
 int atop (scalar_t__) ;

__attribute__((used)) static void
pmap_cold_map(u_long pa, u_long va, u_long cnt)
{
 pt_entry_t *pt;

 for (pt = (pt_entry_t *)KPTphys + atop(va); cnt > 0;
     cnt--, pt++, va += PAGE_SIZE, pa += PAGE_SIZE)
  *pt = pa | PG_V | PG_RW | PG_A | PG_M;
}
