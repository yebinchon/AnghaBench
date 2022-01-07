
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_dirent {int * de_label; } ;


 int MPC_OBJECT_DEVFS ;
 int * mac_devfs_label_alloc () ;
 int mac_labeled ;

void
mac_devfs_init(struct devfs_dirent *de)
{

 if (mac_labeled & MPC_OBJECT_DEVFS)
  de->de_label = mac_devfs_label_alloc();
 else
  de->de_label = ((void*)0);
}
