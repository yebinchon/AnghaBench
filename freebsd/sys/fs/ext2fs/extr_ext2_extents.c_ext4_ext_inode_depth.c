
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_data; } ;
struct ext4_extent_header {unsigned short eh_depth; } ;



__attribute__((used)) static inline unsigned short
ext4_ext_inode_depth(struct inode *ip)
{
 struct ext4_extent_header *ehp;

 ehp = (struct ext4_extent_header *)ip->i_data;
 return (ehp->eh_depth);
}
