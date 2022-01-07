
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ino_t ;


 int devfs_inos ;
 int free_unr (int ,scalar_t__) ;

void
devfs_free_cdp_inode(ino_t ino)
{

 if (ino > 0)
  free_unr(devfs_inos, ino);
}
