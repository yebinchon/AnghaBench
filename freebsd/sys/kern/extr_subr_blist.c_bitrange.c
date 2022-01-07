
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_daddr_t ;


 int BLIST_BMAP_RADIX ;

__attribute__((used)) static inline u_daddr_t
bitrange(int n, int count)
{

 return (((u_daddr_t)-1 << n) &
     ((u_daddr_t)-1 >> (BLIST_BMAP_RADIX - (n + count))));
}
