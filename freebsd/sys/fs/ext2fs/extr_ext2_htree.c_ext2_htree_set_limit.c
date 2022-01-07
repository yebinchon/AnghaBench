
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ext2fs_htree_entry {int dummy; } ;
struct ext2fs_htree_count {int h_entries_max; } ;



__attribute__((used)) static void
ext2_htree_set_limit(struct ext2fs_htree_entry *ep, uint16_t limit)
{
 ((struct ext2fs_htree_count *)(ep))->h_entries_max = limit;
}
