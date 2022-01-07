
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;


 int alloc_unr (int ) ;
 int devfs_inos ;

ino_t
devfs_alloc_cdp_inode(void)
{

 return (alloc_unr(devfs_inos));
}
