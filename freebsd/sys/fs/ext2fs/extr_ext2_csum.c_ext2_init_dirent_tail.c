
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_direct_tail {int e2dt_rec_len; int e2dt_reserved_ft; } ;


 int EXT2_FT_DIR_CSUM ;
 int memset (struct ext2fs_direct_tail*,int ,int) ;

void
ext2_init_dirent_tail(struct ext2fs_direct_tail *tp)
{
 memset(tp, 0, sizeof(struct ext2fs_direct_tail));
 tp->e2dt_rec_len = sizeof(struct ext2fs_direct_tail);
 tp->e2dt_reserved_ft = EXT2_FT_DIR_CSUM;
}
