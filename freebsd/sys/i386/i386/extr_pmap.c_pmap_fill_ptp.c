
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_entry_t ;


 int NPTEPG ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void
pmap_fill_ptp(pt_entry_t *firstpte, pt_entry_t newpte)
{
 pt_entry_t *pte;

 for (pte = firstpte; pte < firstpte + NPTEPG; pte++) {
  *pte = newpte;
  newpte += PAGE_SIZE;
 }
}
