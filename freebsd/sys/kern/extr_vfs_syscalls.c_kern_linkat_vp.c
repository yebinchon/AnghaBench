
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; scalar_t__ v_mount; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_dvp; int ni_cnd; struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AUDITVNODE2 ;
 int CREATE ;
 int EAGAIN ;
 int EEXIST ;
 int EPERM ;
 int EXDEV ;
 int LK_EXCLUSIVE ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOCACHE ;
 int PCATCH ;
 int SAVENAME ;
 scalar_t__ VDIR ;
 int VOP_LINK (struct vnode*,struct vnode*,int *) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int can_hardlink (struct vnode*,int ) ;
 int cap_linkat_target_rights ;
 int mac_vnode_check_link (int ,struct vnode*,struct vnode*,int *) ;
 int namei (struct nameidata*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int ) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
kern_linkat_vp(struct thread *td, struct vnode *vp, int fd, const char *path,
    enum uio_seg segflag)
{
 struct nameidata nd;
 struct mount *mp;
 int error;

 if (vp->v_type == VDIR) {
  vrele(vp);
  return (EPERM);
 }
 NDINIT_ATRIGHTS(&nd, CREATE,
     LOCKPARENT | SAVENAME | AUDITVNODE2 | NOCACHE, segflag, path, fd,
     &cap_linkat_target_rights, td);
 if ((error = namei(&nd)) == 0) {
  if (nd.ni_vp != ((void*)0)) {
   NDFREE(&nd, NDF_ONLY_PNBUF);
   if (nd.ni_dvp == nd.ni_vp)
    vrele(nd.ni_dvp);
   else
    vput(nd.ni_dvp);
   vrele(nd.ni_vp);
   vrele(vp);
   return (EEXIST);
  } else if (nd.ni_dvp->v_mount != vp->v_mount) {





   NDFREE(&nd, NDF_ONLY_PNBUF);
   vput(nd.ni_dvp);
   vrele(vp);
   return (EXDEV);
  } else if ((error = vn_lock(vp, LK_EXCLUSIVE)) == 0) {
   error = can_hardlink(vp, td->td_ucred);





   if (error != 0) {
    vput(vp);
    vput(nd.ni_dvp);
    NDFREE(&nd, NDF_ONLY_PNBUF);
    return (error);
   }
   error = vn_start_write(vp, &mp, V_NOWAIT);
   if (error != 0) {
    vput(vp);
    vput(nd.ni_dvp);
    NDFREE(&nd, NDF_ONLY_PNBUF);
    error = vn_start_write(((void*)0), &mp,
        V_XSLEEP | PCATCH);
    if (error != 0)
     return (error);
    return (EAGAIN);
   }
   error = VOP_LINK(nd.ni_dvp, vp, &nd.ni_cnd);
   VOP_UNLOCK(vp, 0);
   vput(nd.ni_dvp);
   vn_finished_write(mp);
   NDFREE(&nd, NDF_ONLY_PNBUF);
  } else {
   vput(nd.ni_dvp);
   NDFREE(&nd, NDF_ONLY_PNBUF);
   vrele(vp);
   return (EAGAIN);
  }
 }
 vrele(vp);
 return (error);
}
