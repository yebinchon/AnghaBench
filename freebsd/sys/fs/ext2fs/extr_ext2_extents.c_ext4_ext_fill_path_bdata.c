
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ext4_extent_path {int ep_blk; int * ep_data; } ;
struct buf {int b_bufsize; int b_data; } ;


 int ENOMEM ;
 int KASSERT (int ,char*) ;
 int M_EXT2EXTENTS ;
 int M_WAITOK ;
 int * malloc (int ,int ,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int
ext4_ext_fill_path_bdata(struct ext4_extent_path *path,
    struct buf *bp, uint64_t blk)
{

 KASSERT(path->ep_data == ((void*)0),
     ("ext4_ext_fill_path_bdata: bad ep_data"));

 path->ep_data = malloc(bp->b_bufsize, M_EXT2EXTENTS, M_WAITOK);
 if (!path->ep_data)
  return (ENOMEM);

 memcpy(path->ep_data, bp->b_data, bp->b_bufsize);
 path->ep_blk = blk;

 return (0);
}
