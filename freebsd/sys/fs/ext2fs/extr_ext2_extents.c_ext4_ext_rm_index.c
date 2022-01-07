
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_extent_path {TYPE_1__* ep_header; int ep_index; } ;
typedef int e4fs_daddr_t ;
struct TYPE_2__ {scalar_t__ eh_ecount; } ;


 int KASSERT (int,char*) ;
 int ext4_ext_blkfree (struct inode*,int ,int,int ) ;
 int ext4_ext_dirty (struct inode*,struct ext4_extent_path*) ;
 int ext4_ext_index_pblock (int ) ;

__attribute__((used)) static int
ext4_ext_rm_index(struct inode *ip, struct ext4_extent_path *path)
{
 e4fs_daddr_t leaf;


 path--;
 leaf = ext4_ext_index_pblock(path->ep_index);
 KASSERT(path->ep_header->eh_ecount != 0,
     ("ext4_ext_rm_index: bad ecount"));
 path->ep_header->eh_ecount--;
 ext4_ext_dirty(ip, path);
 ext4_ext_blkfree(ip, leaf, 1, 0);
 return (0);
}
