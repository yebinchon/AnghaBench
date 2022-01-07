
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netexport {int dummy; } ;
struct mount {int mnt_flag; int mnt_opt; int mnt_optnew; int mnt_explock; struct netexport* mnt_export; } ;
struct export_args {scalar_t__ ex_numsecflavors; int ex_flags; } ;


 int EINVAL ;
 int ENOENT ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 scalar_t__ MAXSECFLAVORS ;
 int MNT_DEFEXPORTED ;
 int MNT_DELEXPORT ;
 int MNT_EXPORTED ;
 int MNT_EXPUBLIC ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int M_MOUNT ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct netexport*,int ) ;
 int lockmgr (int *,int ,int *) ;
 struct netexport* malloc (int,int ,int) ;
 int vfs_deleteopt (int ,char*) ;
 int vfs_free_addrlist (struct netexport*) ;
 int vfs_hang_addrlist (struct mount*,struct netexport*,struct export_args*) ;
 int vfs_setpublicfs (struct mount*,struct netexport*,struct export_args*) ;

int
vfs_export(struct mount *mp, struct export_args *argp)
{
 struct netexport *nep;
 int error;

 if (argp->ex_numsecflavors < 0
     || argp->ex_numsecflavors >= MAXSECFLAVORS)
  return (EINVAL);

 error = 0;
 lockmgr(&mp->mnt_explock, LK_EXCLUSIVE, ((void*)0));
 nep = mp->mnt_export;
 if (argp->ex_flags & MNT_DELEXPORT) {
  if (nep == ((void*)0)) {
   error = ENOENT;
   goto out;
  }
  if (mp->mnt_flag & MNT_EXPUBLIC) {
   vfs_setpublicfs(((void*)0), ((void*)0), ((void*)0));
   MNT_ILOCK(mp);
   mp->mnt_flag &= ~MNT_EXPUBLIC;
   MNT_IUNLOCK(mp);
  }
  vfs_free_addrlist(nep);
  mp->mnt_export = ((void*)0);
  free(nep, M_MOUNT);
  nep = ((void*)0);
  MNT_ILOCK(mp);
  mp->mnt_flag &= ~(MNT_EXPORTED | MNT_DEFEXPORTED);
  MNT_IUNLOCK(mp);
 }
 if (argp->ex_flags & MNT_EXPORTED) {
  if (nep == ((void*)0)) {
   nep = malloc(sizeof(struct netexport), M_MOUNT, M_WAITOK | M_ZERO);
   mp->mnt_export = nep;
  }
  if (argp->ex_flags & MNT_EXPUBLIC) {
   if ((error = vfs_setpublicfs(mp, nep, argp)) != 0)
    goto out;
   MNT_ILOCK(mp);
   mp->mnt_flag |= MNT_EXPUBLIC;
   MNT_IUNLOCK(mp);
  }
  if ((error = vfs_hang_addrlist(mp, nep, argp)))
   goto out;
  MNT_ILOCK(mp);
  mp->mnt_flag |= MNT_EXPORTED;
  MNT_IUNLOCK(mp);
 }

out:
 lockmgr(&mp->mnt_explock, LK_RELEASE, ((void*)0));
 vfs_deleteopt(mp->mnt_optnew, "export");
 vfs_deleteopt(mp->mnt_opt, "export");
 return (error);
}
