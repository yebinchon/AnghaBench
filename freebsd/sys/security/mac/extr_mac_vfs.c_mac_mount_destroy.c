
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int * mnt_label; } ;


 int mac_mount_label_free (int *) ;

void
mac_mount_destroy(struct mount *mp)
{

 if (mp->mnt_label != ((void*)0)) {
  mac_mount_label_free(mp->mnt_label);
  mp->mnt_label = ((void*)0);
 }
}
