
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_path {int dummy; } ;


 int M_EXT2EXTENTS ;
 int ext4_ext_drop_refs (struct ext4_extent_path*) ;
 int free (struct ext4_extent_path*,int ) ;

void
ext4_ext_path_free(struct ext4_extent_path *path)
{

 if (!path)
  return;

 ext4_ext_drop_refs(path);
 free(path, M_EXT2EXTENTS);
}
