
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct ext2fs_htree_lookup_info {size_t h_levels_num; TYPE_1__* h_levels; } ;
struct buf {int dummy; } ;
struct TYPE_2__ {struct buf* h_bp; } ;


 int brelse (struct buf*) ;

__attribute__((used)) static void
ext2_htree_release(struct ext2fs_htree_lookup_info *info)
{
 u_int i;

 for (i = 0; i < info->h_levels_num; i++) {
  struct buf *bp = info->h_levels[i].h_bp;

  if (bp != ((void*)0))
   brelse(bp);
 }
}
