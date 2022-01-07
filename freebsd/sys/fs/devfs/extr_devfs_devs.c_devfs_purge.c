
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_mount {int dm_lock; } ;
struct devfs_dirent {int de_flags; TYPE_1__* de_dirent; int de_dlist; } ;
struct TYPE_2__ {scalar_t__ d_type; } ;


 int DEVFS_DEL_NORECURSE ;
 scalar_t__ DEVFS_DE_DROP (struct devfs_dirent*) ;
 int DEVFS_DE_HOLD (struct devfs_dirent*) ;
 int DE_DOOMED ;
 int DE_DOT ;
 int DE_DOTDOT ;
 int DE_USER ;
 scalar_t__ DT_DIR ;
 int SX_XLOCKED ;
 struct devfs_dirent* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct devfs_dirent*,int ) ;
 int de_list ;
 int devfs_delete (struct devfs_mount*,struct devfs_dirent*,int ) ;
 int devfs_dir_unref_de (struct devfs_mount*,struct devfs_dirent*) ;
 int devfs_dirent_free (struct devfs_dirent*) ;
 int devfs_dlist_head ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
devfs_purge(struct devfs_mount *dm, struct devfs_dirent *dd)
{
 struct devfs_dirent *de;

 sx_assert(&dm->dm_lock, SX_XLOCKED);

 DEVFS_DE_HOLD(dd);
 for (;;) {





  de = TAILQ_LAST(&dd->de_dlist, devfs_dlist_head);
  if (de == ((void*)0))
   break;
  TAILQ_REMOVE(&dd->de_dlist, de, de_list);
  if (de->de_flags & DE_USER)
   devfs_dir_unref_de(dm, dd);
  if (de->de_flags & (DE_DOT | DE_DOTDOT))
   devfs_delete(dm, de, DEVFS_DEL_NORECURSE);
  else if (de->de_dirent->d_type == DT_DIR)
   devfs_purge(dm, de);
  else
   devfs_delete(dm, de, DEVFS_DEL_NORECURSE);
 }
 if (DEVFS_DE_DROP(dd))
  devfs_dirent_free(dd);
 else if ((dd->de_flags & DE_DOOMED) == 0)
  devfs_delete(dm, dd, DEVFS_DEL_NORECURSE);
}
