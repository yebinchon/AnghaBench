
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_htree_entry {int h_hash; } ;



__attribute__((used)) static void
ext2_htree_set_hash(struct ext2fs_htree_entry *ep, uint32_t hash)
{
 ep->h_hash = hash;
}
