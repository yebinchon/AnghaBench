
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_htree_sort_entry {scalar_t__ h_hash; } ;



__attribute__((used)) static int
ext2_htree_cmp_sort_entry(const void *e1, const void *e2)
{
 const struct ext2fs_htree_sort_entry *entry1, *entry2;

 entry1 = (const struct ext2fs_htree_sort_entry *)e1;
 entry2 = (const struct ext2fs_htree_sort_entry *)e2;

 if (entry1->h_hash < entry2->h_hash)
  return (-1);
 if (entry1->h_hash > entry2->h_hash)
  return (1);
 return (0);
}
