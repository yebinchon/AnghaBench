
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_daddr_t ;


 int BLIST_BMAP_RADIX ;
 int bitrange (int ,int) ;

__attribute__((used)) static inline int
generic_bitpos(u_daddr_t mask)
{
 int hi, lo, mid;

 lo = 0;
 hi = BLIST_BMAP_RADIX;
 while (lo + 1 < hi) {
  mid = (lo + hi) >> 1;
  if (mask & bitrange(0, mid))
   hi = mid;
  else
   lo = mid;
 }
 return (lo);
}
