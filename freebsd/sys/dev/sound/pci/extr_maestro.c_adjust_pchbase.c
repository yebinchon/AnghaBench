
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct agg_chinfo {scalar_t__ phys; size_t base; } ;
typedef size_t bus_addr_t ;


 int AGG_MAXPLAYCH ;
 int BASE_SHIFT ;
 scalar_t__ bootverbose ;
 int printf (char*,size_t,...) ;

__attribute__((used)) static void
adjust_pchbase(struct agg_chinfo *chans, u_int n, u_int size)
{
 struct agg_chinfo *pchs[AGG_MAXPLAYCH];
 u_int i, j, k;
 bus_addr_t base;


 for (i = 0; i < n; i++) {
  for (j = 0; j < i; j++)
   if (chans[i].phys < pchs[j]->phys) {
    for (k = i; k > j; k--)
     pchs[k] = pchs[k - 1];
    break;
   }
  pchs[j] = chans + i;
 }




 base = pchs[0]->base;
 for (k = 1, i = 1; i < n; i++) {
  if (pchs[i]->phys + size - base >= 1 << (WPWA_WTBAR_SHIFT(2) + 2 + 1))

   base = (pchs[i]->base -= k++ << (WPWA_WTBAR_SHIFT(2) + 2 + 1));
  else
   pchs[i]->base = base;
 }


 if (bootverbose) {
  printf("Total of %d bases are assigned.\n", k);
  for (i = 0; i < n; i++) {
   printf("ch.%d: phys 0x%llx, wpwa 0x%llx\n",
          i, (long long)chans[i].phys,
          (long long)(chans[i].phys -
        chans[i].base) >> 1);
  }
 }
}
