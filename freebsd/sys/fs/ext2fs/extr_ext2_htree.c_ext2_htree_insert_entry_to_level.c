
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_htree_lookup_level {scalar_t__ h_entries; struct ext2fs_htree_entry* h_entry; } ;
struct ext2fs_htree_entry {int dummy; } ;


 int ext2_htree_get_count (scalar_t__) ;
 int ext2_htree_set_block (struct ext2fs_htree_entry*,int ) ;
 int ext2_htree_set_count (scalar_t__,int) ;
 int ext2_htree_set_hash (struct ext2fs_htree_entry*,int ) ;
 int memmove (struct ext2fs_htree_entry*,struct ext2fs_htree_entry*,int) ;

__attribute__((used)) static void
ext2_htree_insert_entry_to_level(struct ext2fs_htree_lookup_level *level,
    uint32_t hash, uint32_t blk)
{
 struct ext2fs_htree_entry *target;
 int entries_num;

 target = level->h_entry + 1;
 entries_num = ext2_htree_get_count(level->h_entries);

 memmove(target + 1, target, (char *)(level->h_entries + entries_num) -
     (char *)target);
 ext2_htree_set_block(target, blk);
 ext2_htree_set_hash(target, hash);
 ext2_htree_set_count(level->h_entries, entries_num + 1);
}
