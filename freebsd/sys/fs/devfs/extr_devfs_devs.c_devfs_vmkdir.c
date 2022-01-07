
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct devfs_mount {int dm_mount; int dm_lock; } ;
struct devfs_dirent {int de_mode; int de_links; int de_dlist; struct devfs_dirent* de_dir; int de_flags; TYPE_1__* de_dirent; scalar_t__ de_inode; } ;
struct TYPE_2__ {void* d_type; } ;


 int DE_DOT ;
 int DE_DOTDOT ;
 void* DT_DIR ;
 int SX_XLOCKED ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct devfs_dirent*,int ) ;
 scalar_t__ alloc_unr (int ) ;
 int de_list ;
 int devfs_inos ;
 struct devfs_dirent* devfs_newdirent (char*,int) ;
 int devfs_rules_apply (struct devfs_mount*,struct devfs_dirent*) ;
 int mac_devfs_create_directory (int ,char*,int,struct devfs_dirent*) ;
 int sx_assert (int *,int ) ;

struct devfs_dirent *
devfs_vmkdir(struct devfs_mount *dmp, char *name, int namelen,
    struct devfs_dirent *dotdot, u_int inode)
{
 struct devfs_dirent *dd;
 struct devfs_dirent *de;


 dd = devfs_newdirent(name, namelen);
 TAILQ_INIT(&dd->de_dlist);
 dd->de_dirent->d_type = DT_DIR;
 dd->de_mode = 0555;
 dd->de_links = 2;
 dd->de_dir = dd;
 if (inode != 0)
  dd->de_inode = inode;
 else
  dd->de_inode = alloc_unr(devfs_inos);







 de = devfs_newdirent(".", 1);
 de->de_dirent->d_type = DT_DIR;
 de->de_flags |= DE_DOT;
 TAILQ_INSERT_TAIL(&dd->de_dlist, de, de_list);
 de->de_dir = dd;


 de = devfs_newdirent("..", 2);
 de->de_dirent->d_type = DT_DIR;
 de->de_flags |= DE_DOTDOT;
 TAILQ_INSERT_TAIL(&dd->de_dlist, de, de_list);
 if (dotdot == ((void*)0)) {
  de->de_dir = dd;
 } else {
  de->de_dir = dotdot;
  sx_assert(&dmp->dm_lock, SX_XLOCKED);
  TAILQ_INSERT_TAIL(&dotdot->de_dlist, dd, de_list);
  dotdot->de_links++;
  devfs_rules_apply(dmp, dd);
 }




 return (dd);
}
