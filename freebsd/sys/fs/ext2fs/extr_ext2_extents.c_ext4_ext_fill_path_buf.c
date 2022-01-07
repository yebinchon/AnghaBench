
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_path {int * ep_data; } ;
struct buf {int b_bufsize; int b_data; } ;


 int KASSERT (int ,char*) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void
ext4_ext_fill_path_buf(struct ext4_extent_path *path, struct buf *bp)
{

 KASSERT(path->ep_data != ((void*)0),
     ("ext4_ext_fill_path_buf: bad ep_data"));

 memcpy(bp->b_data, path->ep_data, bp->b_bufsize);
}
