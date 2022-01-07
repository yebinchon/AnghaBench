
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int * mnt_label; } ;


 int MPC_OBJECT_MOUNT ;
 int mac_labeled ;
 int * mac_mount_label_alloc () ;

void
mac_mount_init(struct mount *mp)
{

 if (mac_labeled & MPC_OBJECT_MOUNT)
  mp->mnt_label = mac_mount_label_alloc();
 else
  mp->mnt_label = ((void*)0);
}
