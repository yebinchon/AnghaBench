
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_lookup_args {struct vnode* a_dvp; struct vnode** a_vpp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; int v_vflag; struct devfs_dirent* v_data; struct mount* v_mount; } ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;
struct devfs_mount {size_t dm_idx; int dm_lock; } ;
struct devfs_dirent {int de_flags; } ;
struct componentname {char* cn_nameptr; int cn_flags; int cn_nameiop; int cn_namelen; int cn_lkflags; int cn_cred; struct thread* cn_thread; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {struct devfs_dirent** cdp_dirents; } ;


 int CREATE ;
 int DELETE ;
 scalar_t__ DEVFS_DMP_DROP (struct devfs_mount*) ;
 int DEVFS_DMP_HOLD (struct devfs_mount*) ;
 int DE_WHITEOUT ;
 int EINVAL ;
 int EIO ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ENOTDIR ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_INVOKE (int ,int ,char*,int ,struct cdev**) ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int LK_RETRY ;
 int LK_TYPE_MASK ;
 int LOCKPARENT ;
 int LOOKUP ;
 struct vnode* NULLVP ;
 int RENAME ;
 int SAVENAME ;
 int SPECNAMELEN ;
 scalar_t__ VDIR ;
 int VEXEC ;
 struct devfs_mount* VFSTODEVFS (struct mount*) ;
 int VOP_ACCESS (struct vnode*,int ,int ,struct thread*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREF (struct vnode*) ;
 int VV_ROOT ;
 int VWRITE ;
 int WANTPARENT ;
 TYPE_1__* cdev2priv (struct cdev*) ;
 int clone_drain_lock ;
 int dev_clone ;
 int dev_lock () ;
 int dev_rel (struct cdev*) ;
 int dev_unlock () ;
 int devfs_allocv (struct devfs_dirent*,struct mount*,int,struct vnode**) ;
 struct devfs_dirent* devfs_find (struct devfs_dirent*,char*,int,int ) ;
 char* devfs_fqpn (char*,struct devfs_mount*,struct devfs_dirent*,struct componentname*) ;
 struct devfs_dirent* devfs_parent_dirent (struct devfs_dirent*) ;
 scalar_t__ devfs_populate_vp (struct vnode*) ;
 scalar_t__ devfs_prison_check (struct devfs_dirent*,struct thread*) ;
 int devfs_unmount_final (struct devfs_mount*) ;
 int strlen (char*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
devfs_lookupx(struct vop_lookup_args *ap, int *dm_unlock)
{
 struct componentname *cnp;
 struct vnode *dvp, **vpp;
 struct thread *td;
 struct devfs_dirent *de, *dd;
 struct devfs_dirent **dde;
 struct devfs_mount *dmp;
 struct mount *mp;
 struct cdev *cdev;
 int error, flags, nameiop, dvplocked;
 char specname[SPECNAMELEN + 1], *pname;

 cnp = ap->a_cnp;
 vpp = ap->a_vpp;
 dvp = ap->a_dvp;
 pname = cnp->cn_nameptr;
 td = cnp->cn_thread;
 flags = cnp->cn_flags;
 nameiop = cnp->cn_nameiop;
 mp = dvp->v_mount;
 dmp = VFSTODEVFS(mp);
 dd = dvp->v_data;
 *vpp = NULLVP;

 if ((flags & ISLASTCN) && nameiop == RENAME)
  return (EOPNOTSUPP);

 if (dvp->v_type != VDIR)
  return (ENOTDIR);

 if ((flags & ISDOTDOT) && (dvp->v_vflag & VV_ROOT))
  return (EIO);

 error = VOP_ACCESS(dvp, VEXEC, cnp->cn_cred, td);
 if (error)
  return (error);

 if (cnp->cn_namelen == 1 && *pname == '.') {
  if ((flags & ISLASTCN) && nameiop != LOOKUP)
   return (EINVAL);
  *vpp = dvp;
  VREF(dvp);
  return (0);
 }

 if (flags & ISDOTDOT) {
  if ((flags & ISLASTCN) && nameiop != LOOKUP)
   return (EINVAL);
  de = devfs_parent_dirent(dd);
  if (de == ((void*)0))
   return (ENOENT);
  dvplocked = VOP_ISLOCKED(dvp);
  VOP_UNLOCK(dvp, 0);
  error = devfs_allocv(de, mp, cnp->cn_lkflags & LK_TYPE_MASK,
      vpp);
  *dm_unlock = 0;
  vn_lock(dvp, dvplocked | LK_RETRY);
  return (error);
 }

 dd = dvp->v_data;
 de = devfs_find(dd, cnp->cn_nameptr, cnp->cn_namelen, 0);
 while (de == ((void*)0)) {

  if (nameiop == DELETE)
   return (ENOENT);





  pname = devfs_fqpn(specname, dmp, dd, cnp);
  if (pname == ((void*)0))
   break;

  cdev = ((void*)0);
  DEVFS_DMP_HOLD(dmp);
  sx_xunlock(&dmp->dm_lock);
  sx_slock(&clone_drain_lock);
  EVENTHANDLER_INVOKE(dev_clone,
      td->td_ucred, pname, strlen(pname), &cdev);
  sx_sunlock(&clone_drain_lock);

  if (cdev == ((void*)0))
   sx_xlock(&dmp->dm_lock);
  else if (devfs_populate_vp(dvp) != 0) {
   *dm_unlock = 0;
   sx_xlock(&dmp->dm_lock);
   if (DEVFS_DMP_DROP(dmp)) {
    sx_xunlock(&dmp->dm_lock);
    devfs_unmount_final(dmp);
   } else
    sx_xunlock(&dmp->dm_lock);
   dev_rel(cdev);
   return (ENOENT);
  }
  if (DEVFS_DMP_DROP(dmp)) {
   *dm_unlock = 0;
   sx_xunlock(&dmp->dm_lock);
   devfs_unmount_final(dmp);
   if (cdev != ((void*)0))
    dev_rel(cdev);
   return (ENOENT);
  }

  if (cdev == ((void*)0))
   break;

  dev_lock();
  dde = &cdev2priv(cdev)->cdp_dirents[dmp->dm_idx];
  if (dde != ((void*)0) && *dde != ((void*)0))
   de = *dde;
  dev_unlock();
  dev_rel(cdev);
  break;
 }

 if (de == ((void*)0) || de->de_flags & DE_WHITEOUT) {
  if ((nameiop == CREATE || nameiop == RENAME) &&
      (flags & (LOCKPARENT | WANTPARENT)) && (flags & ISLASTCN)) {
   cnp->cn_flags |= SAVENAME;
   return (EJUSTRETURN);
  }
  return (ENOENT);
 }

 if (devfs_prison_check(de, td))
  return (ENOENT);

 if ((cnp->cn_nameiop == DELETE) && (flags & ISLASTCN)) {
  error = VOP_ACCESS(dvp, VWRITE, cnp->cn_cred, td);
  if (error)
   return (error);
  if (*vpp == dvp) {
   VREF(dvp);
   *vpp = dvp;
   return (0);
  }
 }
 error = devfs_allocv(de, mp, cnp->cn_lkflags & LK_TYPE_MASK, vpp);
 *dm_unlock = 0;
 return (error);
}
