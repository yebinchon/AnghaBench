
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swblk {scalar_t__* d; } ;


 int MPASS (int) ;
 scalar_t__ SWAPBLK_NONE ;
 int SWAP_META_PAGES ;

__attribute__((used)) static bool
swp_pager_swblk_empty(struct swblk *sb, int start, int limit)
{
 int i;

 MPASS(0 <= start && start <= limit && limit <= SWAP_META_PAGES);
 for (i = start; i < limit; i++) {
  if (sb->d[i] != SWAPBLK_NONE)
   return (0);
 }
 return (1);
}
