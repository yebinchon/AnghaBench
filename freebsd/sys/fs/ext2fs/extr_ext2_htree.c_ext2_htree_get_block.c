
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ext2fs_htree_entry {int h_blk; } ;



__attribute__((used)) static uint32_t
ext2_htree_get_block(struct ext2fs_htree_entry *ep)
{
 return (ep->h_blk & 0x00FFFFFF);
}
