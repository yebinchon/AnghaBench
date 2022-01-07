
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_path {int ep_depth; int * ep_data; } ;


 int M_EXT2EXTENTS ;
 int free (int *,int ) ;

__attribute__((used)) static void
ext4_ext_drop_refs(struct ext4_extent_path *path)
{
 int depth, i;

 if (!path)
  return;

 depth = path->ep_depth;
 for (i = 0; i <= depth; i++, path++)
  if (path->ep_data) {
   free(path->ep_data, M_EXT2EXTENTS);
   path->ep_data = ((void*)0);
  }
}
