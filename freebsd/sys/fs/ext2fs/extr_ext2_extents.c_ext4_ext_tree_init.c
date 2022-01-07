
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ec_type; } ;
struct inode {int i_flag; int i_vnode; TYPE_1__ i_ext_cache; scalar_t__ i_data; } ;
struct ext4_extent_header {int eh_max; int eh_magic; } ;


 scalar_t__ EXT2_NDADDR ;
 scalar_t__ EXT2_NIADDR ;
 int EXT4_EXT_CACHE_NO ;
 int EXT4_EXT_MAGIC ;
 int IN_CHANGE ;
 int IN_E4EXTENTS ;
 int IN_UPDATE ;
 int ext2_update (int ,int) ;
 int ext4_ext_space_root (struct inode*) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void
ext4_ext_tree_init(struct inode *ip)
{
 struct ext4_extent_header *ehp;

 ip->i_flag |= IN_E4EXTENTS;

 memset(ip->i_data, 0, EXT2_NDADDR + EXT2_NIADDR);
 ehp = (struct ext4_extent_header *)ip->i_data;
 ehp->eh_magic = EXT4_EXT_MAGIC;
 ehp->eh_max = ext4_ext_space_root(ip);
 ip->i_ext_cache.ec_type = EXT4_EXT_CACHE_NO;
 ip->i_flag |= IN_CHANGE | IN_UPDATE;
 ext2_update(ip->i_vnode, 1);
}
