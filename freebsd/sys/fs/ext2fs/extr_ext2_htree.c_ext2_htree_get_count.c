
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ext2fs_htree_entry {int dummy; } ;
struct ext2fs_htree_count {int h_entries_num; } ;



__attribute__((used)) static uint16_t
ext2_htree_get_count(struct ext2fs_htree_entry *ep)
{
 return (((struct ext2fs_htree_count *)(ep))->h_entries_num);
}
