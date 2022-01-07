
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct componentname {int cn_flags; int cn_lkflags; char* cn_nameptr; scalar_t__ cn_nameiop; } ;


 scalar_t__ DELETE ;
 int EJUSTRETURN ;
 int EROFS ;
 int FOLLOW ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int ISSYMLINK ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 scalar_t__ LOOKUP ;
 int RDONLY ;
 scalar_t__ RENAME ;
 int SAVESTART ;
 scalar_t__ VDIR ;
 scalar_t__ VLNK ;
 int VOP_LOOKUP (struct vnode*,struct vnode**,struct componentname*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREF (struct vnode*) ;
 int WANTPARENT ;
 int panic (char*) ;
 int printf (char*,char*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_printf (struct vnode*,char*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
relookup(struct vnode *dvp, struct vnode **vpp, struct componentname *cnp)
{
 struct vnode *dp = ((void*)0);
 int wantparent;
 int rdonly;
 int error = 0;

 KASSERT(cnp->cn_flags & ISLASTCN,
     ("relookup: Not given last component."));



 wantparent = cnp->cn_flags & (LOCKPARENT|WANTPARENT);
 KASSERT(wantparent, ("relookup: parent not wanted."));
 rdonly = cnp->cn_flags & RDONLY;
 cnp->cn_flags &= ~ISSYMLINK;
 dp = dvp;
 cnp->cn_lkflags = LK_EXCLUSIVE;
 vn_lock(dp, LK_EXCLUSIVE | LK_RETRY);
 if (cnp->cn_nameptr[0] == '\0') {




  KASSERT(cnp->cn_nameiop == LOOKUP, ("nameiop must be LOOKUP"));
  KASSERT(dp->v_type == VDIR, ("dp is not a directory"));

  if (!(cnp->cn_flags & LOCKLEAF))
   VOP_UNLOCK(dp, 0);
  *vpp = dp;

  if (cnp->cn_flags & SAVESTART)
   panic("lookup: SAVESTART");
  return (0);
 }

 if (cnp->cn_flags & ISDOTDOT)
  panic ("relookup: lookup on dot-dot");







 if ((error = VOP_LOOKUP(dp, vpp, cnp)) != 0) {
  KASSERT(*vpp == ((void*)0), ("leaf should be empty"));
  if (error != EJUSTRETURN)
   goto bad;




  if (rdonly) {
   error = EROFS;
   goto bad;
  }

  if (cnp->cn_flags & SAVESTART)
   VREF(dvp);
  if ((cnp->cn_flags & LOCKPARENT) == 0)
   VOP_UNLOCK(dp, 0);





  return (0);
 }

 dp = *vpp;




 if (rdonly &&
     (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME)) {
  if (dvp == dp)
   vrele(dvp);
  else
   vput(dvp);
  error = EROFS;
  goto bad;
 }



 if ((cnp->cn_flags & LOCKPARENT) == 0 && dvp != dp) {
  if (wantparent)
   VOP_UNLOCK(dvp, 0);
  else
   vput(dvp);
 } else if (!wantparent)
  vrele(dvp);



 KASSERT(dp->v_type != VLNK || !(cnp->cn_flags & FOLLOW),
     ("relookup: symlink found.\n"));


 if (cnp->cn_flags & SAVESTART)
  VREF(dvp);

 if ((cnp->cn_flags & LOCKLEAF) == 0)
  VOP_UNLOCK(dp, 0);
 return (0);
bad:
 vput(dp);
 *vpp = ((void*)0);
 return (error);
}
