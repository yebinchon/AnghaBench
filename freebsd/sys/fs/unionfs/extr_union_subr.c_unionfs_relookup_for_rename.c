
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; int cn_pnbuf; int cn_nameptr; } ;


 int HASBUF ;
 struct vnode* NULLVP ;
 int RENAME ;
 struct vnode* UNIONFSVPTOUPPERVP (struct vnode*) ;
 int namei_zone ;
 int strlen (int ) ;
 int uma_zfree (int ,int ) ;
 int unionfs_relookup (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,int ,int ,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
unionfs_relookup_for_rename(struct vnode *dvp, struct componentname *cnp,
       struct thread *td)
{
 int error;
 struct vnode *udvp;
 struct vnode *vp;
 struct componentname cn;

 udvp = UNIONFSVPTOUPPERVP(dvp);
 vp = NULLVP;

 error = unionfs_relookup(udvp, &vp, cnp, &cn, td, cnp->cn_nameptr,
     strlen(cnp->cn_nameptr), RENAME);
 if (error)
  return (error);

 if (vp != NULLVP) {
  if (udvp == vp)
   vrele(vp);
  else
   vput(vp);
 }

 if (cn.cn_flags & HASBUF) {
  uma_zfree(namei_zone, cn.cn_pnbuf);
  cn.cn_flags &= ~HASBUF;
 }

 if (!error) {
  cn.cn_flags |= (cnp->cn_flags & HASBUF);
  cnp->cn_flags = cn.cn_flags;
 }

 return (error);

}
