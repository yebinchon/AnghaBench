
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct vnode {int dummy; } ;
struct vattr {int va_type; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {int dummy; } ;
struct uidinfo {int dummy; } ;
struct ucred {int cr_ruidinfo; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; struct ucred* cn_cred; int cn_pnbuf; int cn_namelen; int cn_nameptr; } ;
typedef int cn ;


 int CREATE ;
 int EEXIST ;
 int HASBUF ;
 struct vnode* NULLVP ;
 int PCATCH ;
 int VNON ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int VOP_MKDIR (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ;
 int VOP_SETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 int V_WAIT ;
 int change_euid (struct ucred*,struct uidinfo*) ;
 int change_ruid (struct ucred*,struct uidinfo*) ;
 int change_svuid (struct ucred*,int ) ;
 int chgproccnt (int ,int,int ) ;
 struct ucred* crdup (struct ucred*) ;
 int crfree (struct ucred*) ;
 int memset (struct componentname*,int ,int) ;
 int namei_zone ;
 struct uidinfo* uifind (int ) ;
 int uifree (struct uidinfo*) ;
 int uma_zfree (int ,int ) ;
 int unionfs_create_uppervattr_core (struct unionfs_mount*,struct vattr*,struct vattr*,struct thread*) ;
 int unionfs_node_update (struct unionfs_node*,struct vnode*,struct thread*) ;
 int unionfs_relookup (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,int ,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
unionfs_mkshadowdir(struct unionfs_mount *ump, struct vnode *udvp,
      struct unionfs_node *unp, struct componentname *cnp,
      struct thread *td)
{
 int error;
 struct vnode *lvp;
 struct vnode *uvp;
 struct vattr va;
 struct vattr lva;
 struct componentname cn;
 struct mount *mp;
 struct ucred *cred;
 struct ucred *credbk;
 struct uidinfo *rootinfo;

 if (unp->un_uppervp != NULLVP)
  return (EEXIST);

 lvp = unp->un_lowervp;
 uvp = NULLVP;
 credbk = cnp->cn_cred;


 rootinfo = uifind((uid_t)0);
 cred = crdup(cnp->cn_cred);




 chgproccnt(cred->cr_ruidinfo, 1, 0);
 change_euid(cred, rootinfo);
 change_ruid(cred, rootinfo);
 change_svuid(cred, (uid_t)0);
 uifree(rootinfo);
 cnp->cn_cred = cred;

 memset(&cn, 0, sizeof(cn));

 if ((error = VOP_GETATTR(lvp, &lva, cnp->cn_cred)))
  goto unionfs_mkshadowdir_abort;

 if ((error = unionfs_relookup(udvp, &uvp, cnp, &cn, td, cnp->cn_nameptr, cnp->cn_namelen, CREATE)))
  goto unionfs_mkshadowdir_abort;
 if (uvp != NULLVP) {
  if (udvp == uvp)
   vrele(uvp);
  else
   vput(uvp);

  error = EEXIST;
  goto unionfs_mkshadowdir_free_out;
 }

 if ((error = vn_start_write(udvp, &mp, V_WAIT | PCATCH)))
  goto unionfs_mkshadowdir_free_out;
 unionfs_create_uppervattr_core(ump, &lva, &va, td);

 error = VOP_MKDIR(udvp, &uvp, &cn, &va);

 if (!error) {
  unionfs_node_update(unp, uvp, td);





  va.va_type = VNON;
  VOP_SETATTR(uvp, &va, cn.cn_cred);
 }
 vn_finished_write(mp);

unionfs_mkshadowdir_free_out:
 if (cn.cn_flags & HASBUF) {
  uma_zfree(namei_zone, cn.cn_pnbuf);
  cn.cn_flags &= ~HASBUF;
 }

unionfs_mkshadowdir_abort:
 cnp->cn_cred = credbk;
 chgproccnt(cred->cr_ruidinfo, -1, 0);
 crfree(cred);

 return (error);
}
