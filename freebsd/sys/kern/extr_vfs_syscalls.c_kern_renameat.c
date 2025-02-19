
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct thread {int td_ucred; } ;
struct TYPE_7__ {int cn_flags; } ;
struct TYPE_6__ {int fc_rights; } ;
struct nameidata {int ni_resflags; struct vnode* ni_startdir; struct vnode* ni_dvp; TYPE_2__ ni_cnd; struct vnode* ni_vp; TYPE_1__ ni_filecaps; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_FDCWD ;
 int AUDITVNODE1 ;
 int AUDITVNODE2 ;
 int DELETE ;
 int EINVAL ;
 int EISDIR ;
 int ENOTDIR ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NIRES_ABS ;
 int NOCACHE ;
 int PCATCH ;
 int RENAME ;
 int SAVESTART ;
 scalar_t__ VDIR ;
 int VOP_RENAME (struct vnode*,struct vnode*,TYPE_2__*,struct vnode*,struct vnode*,TYPE_2__*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int WANTPARENT ;
 int WILLBEDIR ;
 int bwillwrite () ;
 int cap_check (int *,int *) ;
 int cap_renameat_source_rights ;
 int cap_renameat_target_rights ;
 int cap_unlinkat_rights ;
 int mac_vnode_check_rename_from (int ,struct vnode*,struct vnode*,TYPE_2__*) ;
 int mac_vnode_check_rename_to (int ,struct vnode*,struct vnode*,int,TYPE_2__*) ;
 int namei (struct nameidata*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern_renameat(struct thread *td, int oldfd, const char *old, int newfd,
    const char *new, enum uio_seg pathseg)
{
 struct mount *mp = ((void*)0);
 struct vnode *tvp, *fvp, *tdvp;
 struct nameidata fromnd, tond;
 int error;

again:
 bwillwrite();





 NDINIT_ATRIGHTS(&fromnd, DELETE, WANTPARENT | SAVESTART | AUDITVNODE1,
     pathseg, old, oldfd,
     &cap_renameat_source_rights, td);


 if ((error = namei(&fromnd)) != 0)
  return (error);







 fvp = fromnd.ni_vp;
 NDINIT_ATRIGHTS(&tond, RENAME, LOCKPARENT | LOCKLEAF | NOCACHE |
     SAVESTART | AUDITVNODE2, pathseg, new, newfd,
     &cap_renameat_target_rights, td);
 if (fromnd.ni_vp->v_type == VDIR)
  tond.ni_cnd.cn_flags |= WILLBEDIR;
 if ((error = namei(&tond)) != 0) {

  if (error == EISDIR && fvp->v_type == VDIR)
   error = EINVAL;
  NDFREE(&fromnd, NDF_ONLY_PNBUF);
  vrele(fromnd.ni_dvp);
  vrele(fvp);
  goto out1;
 }
 tdvp = tond.ni_dvp;
 tvp = tond.ni_vp;
 error = vn_start_write(fvp, &mp, V_NOWAIT);
 if (error != 0) {
  NDFREE(&fromnd, NDF_ONLY_PNBUF);
  NDFREE(&tond, NDF_ONLY_PNBUF);
  if (tvp != ((void*)0))
   vput(tvp);
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  vrele(fromnd.ni_dvp);
  vrele(fvp);
  vrele(tond.ni_startdir);
  if (fromnd.ni_startdir != ((void*)0))
   vrele(fromnd.ni_startdir);
  error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH);
  if (error != 0)
   return (error);
  goto again;
 }
 if (tvp != ((void*)0)) {
  if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
   error = ENOTDIR;
   goto out;
  } else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
   error = EISDIR;
   goto out;
  }
 }
 if (fvp == tdvp) {
  error = EINVAL;
  goto out;
 }




 if (fvp == tvp)
  error = -1;





out:
 if (error == 0) {
  error = VOP_RENAME(fromnd.ni_dvp, fromnd.ni_vp, &fromnd.ni_cnd,
      tond.ni_dvp, tond.ni_vp, &tond.ni_cnd);
  NDFREE(&fromnd, NDF_ONLY_PNBUF);
  NDFREE(&tond, NDF_ONLY_PNBUF);
 } else {
  NDFREE(&fromnd, NDF_ONLY_PNBUF);
  NDFREE(&tond, NDF_ONLY_PNBUF);
  if (tvp != ((void*)0))
   vput(tvp);
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  vrele(fromnd.ni_dvp);
  vrele(fvp);
 }
 vrele(tond.ni_startdir);
 vn_finished_write(mp);
out1:
 if (fromnd.ni_startdir)
  vrele(fromnd.ni_startdir);
 if (error == -1)
  return (0);
 return (error);
}
