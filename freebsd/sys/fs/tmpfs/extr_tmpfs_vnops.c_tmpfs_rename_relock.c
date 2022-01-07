
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct tmpfs_dirent {int td_node; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOTEMPTY ;
 int ISDOTDOT ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VP_TO_TMPFS_DIR (struct vnode*) ;
 int tmpfs_alloc_vp (struct mount*,int ,int,struct vnode**) ;
 struct tmpfs_dirent* tmpfs_dir_lookup (int ,int *,struct componentname*) ;
 int tmpfs_rename_restarts ;
 int vn_lock (struct vnode*,int) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
tmpfs_rename_relock(struct vnode *fdvp, struct vnode **fvpp,
    struct vnode *tdvp, struct vnode **tvpp,
    struct componentname *fcnp, struct componentname *tcnp)
{
 struct vnode *nvp;
 struct mount *mp;
 struct tmpfs_dirent *de;
 int error, restarts = 0;

 VOP_UNLOCK(tdvp, 0);
 if (*tvpp != ((void*)0) && *tvpp != tdvp)
  VOP_UNLOCK(*tvpp, 0);
 mp = fdvp->v_mount;

relock:
 restarts += 1;
 error = vn_lock(fdvp, LK_EXCLUSIVE);
 if (error)
  goto releout;
 if (vn_lock(tdvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
  VOP_UNLOCK(fdvp, 0);
  error = vn_lock(tdvp, LK_EXCLUSIVE);
  if (error)
   goto releout;
  VOP_UNLOCK(tdvp, 0);
  goto relock;
 }




 de = tmpfs_dir_lookup(VP_TO_TMPFS_DIR(fdvp), ((void*)0), fcnp);
 if (de == ((void*)0)) {
  VOP_UNLOCK(fdvp, 0);
  VOP_UNLOCK(tdvp, 0);
  if ((fcnp->cn_flags & ISDOTDOT) != 0 ||
      (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.'))
   error = EINVAL;
  else
   error = ENOENT;
  goto releout;
 }
 error = tmpfs_alloc_vp(mp, de->td_node, LK_EXCLUSIVE | LK_NOWAIT, &nvp);
 if (error != 0) {
  VOP_UNLOCK(fdvp, 0);
  VOP_UNLOCK(tdvp, 0);
  if (error != EBUSY)
   goto releout;
  error = tmpfs_alloc_vp(mp, de->td_node, LK_EXCLUSIVE, &nvp);
  if (error != 0)
   goto releout;
  VOP_UNLOCK(nvp, 0);



  if (nvp == tdvp) {
   vrele(nvp);
   error = EINVAL;
   goto releout;
  }
  vrele(*fvpp);
  *fvpp = nvp;
  goto relock;
 }
 vrele(*fvpp);
 *fvpp = nvp;
 VOP_UNLOCK(*fvpp, 0);



 de = tmpfs_dir_lookup(VP_TO_TMPFS_DIR(tdvp), ((void*)0), tcnp);



 if (de == ((void*)0) && *tvpp != ((void*)0)) {
  vrele(*tvpp);
  *tvpp = ((void*)0);
 }




 if (de != ((void*)0)) {
  nvp = ((void*)0);
  error = tmpfs_alloc_vp(mp, de->td_node,
      LK_EXCLUSIVE | LK_NOWAIT, &nvp);
  if (*tvpp != ((void*)0))
   vrele(*tvpp);
  *tvpp = nvp;
  if (error != 0) {
   VOP_UNLOCK(fdvp, 0);
   VOP_UNLOCK(tdvp, 0);
   if (error != EBUSY)
    goto releout;
   error = tmpfs_alloc_vp(mp, de->td_node, LK_EXCLUSIVE,
       &nvp);
   if (error != 0)
    goto releout;
   VOP_UNLOCK(nvp, 0);



   if (nvp == fdvp) {
    error = ENOTEMPTY;
    goto releout;
   }
   goto relock;
  }
 }
 tmpfs_rename_restarts += restarts;

 return (0);

releout:
 vrele(fdvp);
 vrele(*fvpp);
 vrele(tdvp);
 if (*tvpp != ((void*)0))
  vrele(*tvpp);
 tmpfs_rename_restarts += restarts;

 return (error);
}
