
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_db; } ;
struct ext4_extent_path {int ep_depth; scalar_t__ index_count; struct ext4_extent_header* ep_header; struct ext4_extent_path* ep_data; scalar_t__ ep_index; } ;
struct ext4_extent_header {scalar_t__ eh_ecount; } ;
struct buf {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {int eh_max; scalar_t__ eh_depth; } ;


 int EIO ;
 int ENOMEM ;
 scalar_t__ EXT_LAST_INDEX (struct ext4_extent_header*) ;
 int M_EXT2EXTENTS ;
 int M_WAITOK ;
 int M_ZERO ;
 int brelse (struct buf*) ;
 int ext4_ext_check_header (struct inode*,struct ext4_extent_header*) ;
 int ext4_ext_dirty (struct inode*,struct ext4_extent_path*) ;
 int ext4_ext_drop_refs (struct ext4_extent_path*) ;
 int ext4_ext_fill_path_bdata (struct ext4_extent_path*,struct buf*,int ) ;
 TYPE_1__* ext4_ext_header (struct inode*) ;
 int ext4_ext_index_pblock (scalar_t__) ;
 int ext4_ext_inode_depth (struct inode*) ;
 scalar_t__ ext4_ext_more_to_rm (struct ext4_extent_path*) ;
 int ext4_ext_rm_index (struct inode*,struct ext4_extent_path*) ;
 int ext4_ext_rm_leaf (struct inode*,struct ext4_extent_path*,int ) ;
 int ext4_ext_space_root (struct inode*) ;
 struct buf* ext4_read_extent_tree_block (struct inode*,int ,int,int ) ;
 int free (struct ext4_extent_path*,int ) ;
 struct ext4_extent_path* malloc (int,int ,int) ;
 int memset (struct ext4_extent_path*,int ,int) ;

int
ext4_ext_remove_space(struct inode *ip, off_t length, int flags,
    struct ucred *cred, struct thread *td)
{
 struct buf *bp;
 struct ext4_extent_header *ehp;
 struct ext4_extent_path *path;
 int depth;
 int i, error;

 ehp = (struct ext4_extent_header *)ip->i_db;
 depth = ext4_ext_inode_depth(ip);

 error = ext4_ext_check_header(ip, ehp);
 if(error)
  return (error);

 path = malloc(sizeof(struct ext4_extent_path) * (depth + 1),
     M_EXT2EXTENTS, M_WAITOK | M_ZERO);
 if (!path)
  return (ENOMEM);

 path[0].ep_header = ehp;
 path[0].ep_depth = depth;
 i = 0;
 while (error == 0 && i >= 0) {
  if (i == depth) {

   error = ext4_ext_rm_leaf(ip, path, length);
   if (error)
    break;
   free(path[i].ep_data, M_EXT2EXTENTS);
   path[i].ep_data = ((void*)0);
   i--;
   continue;
  }


  if (!path[i].ep_header)
   path[i].ep_header =
       (struct ext4_extent_header *)path[i].ep_data;

  if (!path[i].ep_index) {

   path[i].ep_index = EXT_LAST_INDEX(path[i].ep_header);
   path[i].index_count = path[i].ep_header->eh_ecount + 1;
  } else {

   path[i].ep_index--;
  }

  if (ext4_ext_more_to_rm(path + i)) {
   memset(path + i + 1, 0, sizeof(*path));
   bp = ext4_read_extent_tree_block(ip,
       ext4_ext_index_pblock(path[i].ep_index),
       path[0].ep_depth - (i + 1), 0);
   if (!bp) {
    error = EIO;
    break;
   }

   ext4_ext_fill_path_bdata(&path[i+1], bp,
       ext4_ext_index_pblock(path[i].ep_index));
   brelse(bp);
   path[i].index_count = path[i].ep_header->eh_ecount;
   i++;
  } else {
   if (path[i].ep_header->eh_ecount == 0 && i > 0) {

    error = ext4_ext_rm_index(ip, path + i);
   }
   free(path[i].ep_data, M_EXT2EXTENTS);
   path[i].ep_data = ((void*)0);
   i--;
  }
 }

 if (path->ep_header->eh_ecount == 0) {



   ext4_ext_header(ip)->eh_depth = 0;
   ext4_ext_header(ip)->eh_max = ext4_ext_space_root(ip);
   ext4_ext_dirty(ip, path);
 }

 ext4_ext_drop_refs(path);
 free(path, M_EXT2EXTENTS);

 return (error);
}
