
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_dirent {int * de_label; } ;


 int mac_devfs_label_free (int *) ;

void
mac_devfs_destroy(struct devfs_dirent *de)
{

 if (de->de_label != ((void*)0)) {
  mac_devfs_label_free(de->de_label);
  de->de_label = ((void*)0);
 }
}
