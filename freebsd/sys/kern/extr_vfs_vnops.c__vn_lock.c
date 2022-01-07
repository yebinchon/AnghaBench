
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_holdcnt; int v_iflag; } ;


 int ENOENT ;
 int KASSERT (int,char*) ;
 int LK_INTERLOCK ;
 int LK_RETRY ;
 int LK_TYPE_MASK ;
 int VI_DOOMED ;
 int VNASSERT (int,struct vnode*,char*) ;
 int VOP_LOCK1 (struct vnode*,int,char*,int) ;
 int VOP_UNLOCK (struct vnode*,int ) ;

int
_vn_lock(struct vnode *vp, int flags, char *file, int line)
{
 int error;

 VNASSERT((flags & LK_TYPE_MASK) != 0, vp,
     ("vn_lock: no locktype"));
 VNASSERT(vp->v_holdcnt != 0, vp, ("vn_lock: zero hold count"));
retry:
 error = VOP_LOCK1(vp, flags, file, line);
 flags &= ~LK_INTERLOCK;
 KASSERT((flags & LK_RETRY) == 0 || error == 0,
     ("vn_lock: error %d incompatible with flags %#x", error, flags));

 if ((flags & LK_RETRY) == 0) {
  if (error == 0 && (vp->v_iflag & VI_DOOMED) != 0) {
   VOP_UNLOCK(vp, 0);
   error = ENOENT;
  }
 } else if (error != 0)
  goto retry;
 return (error);
}
