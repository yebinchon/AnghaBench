
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; struct mount* v_mountedhere; int v_iflag; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_3__ {int f_mntonname; } ;
struct mount {struct vnode* mnt_vnodecovered; TYPE_1__ mnt_stat; int mnt_flag; } ;
struct TYPE_4__ {struct mount* v_mount; } ;


 int AT_FDCWD ;
 int ENOTDIR ;
 int FD_NONE ;
 int FOLLOW ;
 int LK_EXCLUSIVE ;
 int LOCKLEAF ;
 int LOOKUP ;
 int MNAMELEN ;
 int MNT_ROOTFS ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 struct mount* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct mount*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct mount*,int ) ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int TAILQ_REMOVE (int *,struct mount*,int ) ;
 int UIO_SYSSPACE ;
 scalar_t__ VDIR ;
 scalar_t__ VFS_ROOT (struct mount*,int ,struct vnode**) ;
 int VI_LOCK (struct vnode*) ;
 int VI_MOUNT ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_SAVE ;
 int cache_purge (struct vnode*) ;
 int cache_purgevfs (struct mount*,int) ;
 int kern_funlinkat (struct thread*,int ,char*,int ,int ,int ,int ) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int namei (struct nameidata*) ;
 int panic (char*) ;
 int printf (char*,int) ;
 TYPE_2__* rootvnode ;
 int set_rootvnode () ;
 int strlcpy (int ,char*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vinvalbuf (struct vnode*,int ,int ,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static void
vfs_mountroot_shuffle(struct thread *td, struct mount *mpdevfs)
{
 struct nameidata nd;
 struct mount *mporoot, *mpnroot;
 struct vnode *vp, *vporoot, *vpdevfs;
 char *fspath;
 int error;

 mpnroot = TAILQ_NEXT(mpdevfs, mnt_list);


 mtx_lock(&mountlist_mtx);
 mporoot = TAILQ_FIRST(&mountlist);
 TAILQ_REMOVE(&mountlist, mpdevfs, mnt_list);
 if (mporoot != mpdevfs) {
  TAILQ_REMOVE(&mountlist, mpnroot, mnt_list);
  TAILQ_INSERT_HEAD(&mountlist, mpnroot, mnt_list);
 }
 TAILQ_INSERT_TAIL(&mountlist, mpdevfs, mnt_list);
 mtx_unlock(&mountlist_mtx);

 cache_purgevfs(mporoot, 1);
 if (mporoot != mpdevfs)
  cache_purgevfs(mpdevfs, 1);

 if (VFS_ROOT(mporoot, LK_EXCLUSIVE, &vporoot))
  panic("vfs_mountroot_shuffle: Cannot find root vnode");

 VI_LOCK(vporoot);
 vporoot->v_iflag &= ~VI_MOUNT;
 VI_UNLOCK(vporoot);
 vporoot->v_mountedhere = ((void*)0);
 mporoot->mnt_flag &= ~MNT_ROOTFS;
 mporoot->mnt_vnodecovered = ((void*)0);
 vput(vporoot);


 mpnroot->mnt_vnodecovered = ((void*)0);
 set_rootvnode();
 cache_purgevfs(rootvnode->v_mount, 1);

 if (mporoot != mpdevfs) {

  fspath = "/.mount";
  NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE,
      fspath, td);
  error = namei(&nd);
  if (error) {
   NDFREE(&nd, NDF_ONLY_PNBUF);
   fspath = "/mnt";
   NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE,
       fspath, td);
   error = namei(&nd);
  }
  if (!error) {
   vp = nd.ni_vp;
   error = (vp->v_type == VDIR) ? 0 : ENOTDIR;
   if (!error)
    error = vinvalbuf(vp, V_SAVE, 0, 0);
   if (!error) {
    cache_purge(vp);
    mporoot->mnt_vnodecovered = vp;
    vp->v_mountedhere = mporoot;
    strlcpy(mporoot->mnt_stat.f_mntonname,
        fspath, MNAMELEN);
    VOP_UNLOCK(vp, 0);
   } else
    vput(vp);
  }
  NDFREE(&nd, NDF_ONLY_PNBUF);

  if (error)
   printf("mountroot: unable to remount previous root "
       "under /.mount or /mnt (error %d)\n", error);
 }


 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, "/dev", td);
 error = namei(&nd);
 if (!error) {
  vp = nd.ni_vp;
  error = (vp->v_type == VDIR) ? 0 : ENOTDIR;
  if (!error)
   error = vinvalbuf(vp, V_SAVE, 0, 0);
  if (!error) {
   vpdevfs = mpdevfs->mnt_vnodecovered;
   if (vpdevfs != ((void*)0)) {
    cache_purge(vpdevfs);
    vpdevfs->v_mountedhere = ((void*)0);
    vrele(vpdevfs);
   }
   mpdevfs->mnt_vnodecovered = vp;
   vp->v_mountedhere = mpdevfs;
   VOP_UNLOCK(vp, 0);
  } else
   vput(vp);
 }
 if (error)
  printf("mountroot: unable to remount devfs under /dev "
      "(error %d)\n", error);
 NDFREE(&nd, NDF_ONLY_PNBUF);

 if (mporoot == mpdevfs) {
  vfs_unbusy(mpdevfs);

  error = kern_funlinkat(td, AT_FDCWD, "/dev/dev", FD_NONE,
      UIO_SYSSPACE, 0, 0);
  if (error)
   printf("mountroot: unable to unlink /dev/dev "
       "(error %d)\n", error);
 }
}
