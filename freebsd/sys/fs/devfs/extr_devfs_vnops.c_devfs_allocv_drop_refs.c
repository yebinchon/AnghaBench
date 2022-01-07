
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfs_mount {int dm_lock; } ;
struct devfs_dirent {int de_flags; } ;


 scalar_t__ DEVFS_DE_DROP (struct devfs_dirent*) ;
 scalar_t__ DEVFS_DMP_DROP (struct devfs_mount*) ;
 int DE_DOOMED ;
 int KASSERT (int,char*) ;
 int devfs_dirent_free (struct devfs_dirent*) ;
 int devfs_unmount_final (struct devfs_mount*) ;
 int sx_unlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
devfs_allocv_drop_refs(int drop_dm_lock, struct devfs_mount *dmp,
 struct devfs_dirent *de)
{
 int not_found;

 not_found = 0;
 if (de->de_flags & DE_DOOMED)
  not_found = 1;
 if (DEVFS_DE_DROP(de)) {
  KASSERT(not_found == 1, ("DEVFS de dropped but not doomed"));
  devfs_dirent_free(de);
 }
 if (DEVFS_DMP_DROP(dmp)) {
  KASSERT(not_found == 1,
   ("DEVFS mount struct freed before dirent"));
  not_found = 2;
  sx_xunlock(&dmp->dm_lock);
  devfs_unmount_final(dmp);
 }
 if (not_found == 1 || (drop_dm_lock && not_found != 2))
  sx_unlock(&dmp->dm_lock);
 return (not_found);
}
