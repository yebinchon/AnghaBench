
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_htree_lookup_level {int dummy; } ;
struct ext2fs_htree_lookup_info {int h_levels_num; struct ext2fs_htree_lookup_level* h_levels; } ;


 int ext2_htree_insert_entry_to_level (struct ext2fs_htree_lookup_level*,int ,int ) ;

__attribute__((used)) static void
ext2_htree_insert_entry(struct ext2fs_htree_lookup_info *info,
    uint32_t hash, uint32_t blk)
{
 struct ext2fs_htree_lookup_level *level;

 level = &info->h_levels[info->h_levels_num - 1];
 ext2_htree_insert_entry_to_level(level, hash, blk);
}
