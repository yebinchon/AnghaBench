
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_ext2fs {TYPE_1__* e2fs; } ;
struct inode {scalar_t__ i_next_alloc_block; scalar_t__ i_next_alloc_goal; int i_block_group; int i_ump; struct m_ext2fs* i_e2fs; } ;
typedef scalar_t__ e4fs_daddr_t ;
typedef scalar_t__ e2fs_lbn_t ;
typedef scalar_t__ e2fs_daddr_t ;
struct TYPE_2__ {scalar_t__ e2fs_first_dblock; } ;


 int EXT2_BLOCKS_PER_GROUP (struct m_ext2fs*) ;
 int EXT2_MTX (int ) ;
 int MA_OWNED ;
 int mtx_assert (int ,int ) ;

e4fs_daddr_t
ext2_blkpref(struct inode *ip, e2fs_lbn_t lbn, int indx, e2fs_daddr_t *bap,
    e2fs_daddr_t blocknr)
{
 struct m_ext2fs *fs;
 int tmp;

 fs = ip->i_e2fs;

 mtx_assert(EXT2_MTX(ip->i_ump), MA_OWNED);





 if (ip->i_next_alloc_block == lbn && ip->i_next_alloc_goal != 0)
  return ip->i_next_alloc_goal;





 if (bap)
  for (tmp = indx - 1; tmp >= 0; tmp--)
   if (bap[tmp])
    return bap[tmp];





 return (blocknr ? blocknr :
     (e2fs_daddr_t)(ip->i_block_group *
     EXT2_BLOCKS_PER_GROUP(fs)) + fs->e2fs->e2fs_first_dblock);
}
