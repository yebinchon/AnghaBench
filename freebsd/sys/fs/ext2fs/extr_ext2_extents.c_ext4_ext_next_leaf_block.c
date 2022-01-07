
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent_path {int ep_depth; TYPE_1__* ep_index; int ep_header; } ;
struct TYPE_2__ {int ei_blk; } ;


 int EXT4_MAX_BLOCKS ;
 TYPE_1__* EXT_LAST_INDEX (int ) ;

__attribute__((used)) static unsigned
ext4_ext_next_leaf_block(struct inode *ip, struct ext4_extent_path *path)
{
 int depth = path->ep_depth;


 if (depth == 0)
  return (EXT4_MAX_BLOCKS);


 depth--;

 while (depth >= 0) {
  if (path[depth].ep_index !=
      EXT_LAST_INDEX(path[depth].ep_header))
   return (path[depth].ep_index[1].ei_blk);

  depth--;
 }

 return (EXT4_MAX_BLOCKS);
}
