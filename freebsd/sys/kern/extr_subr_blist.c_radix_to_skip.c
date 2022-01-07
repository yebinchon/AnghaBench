
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int daddr_t ;


 int BLIST_BMAP_RADIX ;
 int BLIST_META_MASK ;
 int BLIST_META_RADIX ;

__attribute__((used)) static inline daddr_t
radix_to_skip(daddr_t radix)
{

 return (radix /
     ((BLIST_BMAP_RADIX / BLIST_META_RADIX) * BLIST_META_MASK));
}
