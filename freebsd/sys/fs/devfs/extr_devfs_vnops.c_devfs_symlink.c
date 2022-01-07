
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_symlink_args {int a_vpp; TYPE_3__* a_dvp; TYPE_1__* a_cnp; int a_target; } ;
struct devfs_mount {int dm_lock; int dm_mount; } ;
struct devfs_dirent {int de_flags; int de_mode; int de_dlist; TYPE_2__* de_dirent; int de_symlink; struct devfs_dirent* de_dir; int de_inode; scalar_t__ de_gid; scalar_t__ de_uid; } ;
struct TYPE_6__ {int v_mount; struct devfs_dirent* v_data; } ;
struct TYPE_5__ {int d_namlen; int d_name; int d_type; } ;
struct TYPE_4__ {int cn_cred; int cn_namelen; int cn_nameptr; } ;


 int DEVFS_DEL_NORECURSE ;
 int DE_COVERED ;
 int DE_USER ;
 int DT_LNK ;
 int EEXIST ;
 int ENOENT ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int M_DEVFS ;
 int M_WAITOK ;
 int PRIV_DEVFS_SYMLINK ;
 struct devfs_dirent* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct devfs_dirent*,struct devfs_dirent*,int ) ;
 struct devfs_dirent* TAILQ_NEXT (struct devfs_dirent*,int ) ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int alloc_unr (int ) ;
 int bcopy (int ,int ,int) ;
 int curthread ;
 int de_list ;
 int devfs_allocv (struct devfs_dirent*,int ,int ,int ) ;
 int devfs_delete (struct devfs_mount*,struct devfs_dirent*,int ) ;
 int devfs_dir_ref_de (struct devfs_mount*,struct devfs_dirent*) ;
 struct devfs_dirent* devfs_find (struct devfs_dirent*,int ,int ,int ) ;
 int devfs_inos ;
 struct devfs_dirent* devfs_newdirent (int ,int ) ;
 scalar_t__ devfs_populate_vp (TYPE_3__*) ;
 int devfs_rules_apply (struct devfs_mount*,struct devfs_dirent*) ;
 int mac_devfs_create_symlink (int ,int ,struct devfs_dirent*,struct devfs_dirent*) ;
 int malloc (int,int ,int ) ;
 int priv_check (int ,int ) ;
 int strlen (int ) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
devfs_symlink(struct vop_symlink_args *ap)
{
 int i, error;
 struct devfs_dirent *dd;
 struct devfs_dirent *de, *de_covered, *de_dotdot;
 struct devfs_mount *dmp;

 error = priv_check(curthread, PRIV_DEVFS_SYMLINK);
 if (error)
  return(error);
 dmp = VFSTODEVFS(ap->a_dvp->v_mount);
 if (devfs_populate_vp(ap->a_dvp) != 0)
  return (ENOENT);

 dd = ap->a_dvp->v_data;
 de = devfs_newdirent(ap->a_cnp->cn_nameptr, ap->a_cnp->cn_namelen);
 de->de_flags = DE_USER;
 de->de_uid = 0;
 de->de_gid = 0;
 de->de_mode = 0755;
 de->de_inode = alloc_unr(devfs_inos);
 de->de_dir = dd;
 de->de_dirent->d_type = DT_LNK;
 i = strlen(ap->a_target) + 1;
 de->de_symlink = malloc(i, M_DEVFS, M_WAITOK);
 bcopy(ap->a_target, de->de_symlink, i);



 de_covered = devfs_find(dd, de->de_dirent->d_name,
     de->de_dirent->d_namlen, 0);
 if (de_covered != ((void*)0)) {
  if ((de_covered->de_flags & DE_USER) != 0) {
   devfs_delete(dmp, de, DEVFS_DEL_NORECURSE);
   sx_xunlock(&dmp->dm_lock);
   return (EEXIST);
  }
  KASSERT((de_covered->de_flags & DE_COVERED) == 0,
      ("devfs_symlink: entry %p already covered", de_covered));
  de_covered->de_flags |= DE_COVERED;
 }

 de_dotdot = TAILQ_FIRST(&dd->de_dlist);
 de_dotdot = TAILQ_NEXT(de_dotdot, de_list);
 TAILQ_INSERT_AFTER(&dd->de_dlist, de_dotdot, de, de_list);
 devfs_dir_ref_de(dmp, dd);
 devfs_rules_apply(dmp, de);

 return (devfs_allocv(de, ap->a_dvp->v_mount, LK_EXCLUSIVE, ap->a_vpp));
}
