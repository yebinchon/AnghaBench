
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_iflag; int * v_mountedhere; struct autofs_node* v_data; } ;
struct autofs_node {int an_cached; } ;
struct TYPE_2__ {int sc_lock; } ;


 int AUTOFS_DEBUG (char*) ;
 int AUTOFS_WARN (char*,int) ;
 int ENOENT ;
 int LK_RETRY ;
 int VFS_ROOT (int *,int,struct vnode**) ;
 int VI_DOOMED ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_1__* autofs_softc ;
 int autofs_trigger (struct autofs_node*,char const*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vn_lock (struct vnode*,int) ;
 int vref (struct vnode*) ;
 int vunref (struct vnode*) ;

__attribute__((used)) static int
autofs_trigger_vn(struct vnode *vp, const char *path, int pathlen,
    struct vnode **newvp)
{
 struct autofs_node *anp;
 int error, lock_flags;

 anp = vp->v_data;







 lock_flags = VOP_ISLOCKED(vp);
 vref(vp);
 VOP_UNLOCK(vp, 0);

 sx_xlock(&autofs_softc->sc_lock);




 if (vp->v_mountedhere != ((void*)0)) {
  error = 0;
  goto mounted;
 }

 error = autofs_trigger(anp, path, pathlen);
mounted:
 sx_xunlock(&autofs_softc->sc_lock);
 vn_lock(vp, lock_flags | LK_RETRY);
 vunref(vp);
 if ((vp->v_iflag & VI_DOOMED) != 0) {
  AUTOFS_DEBUG("VI_DOOMED");
  return (ENOENT);
 }

 if (error != 0)
  return (error);

 if (vp->v_mountedhere == ((void*)0)) {
  *newvp = ((void*)0);
  return (0);
 } else {






  anp->an_cached = 0;
 }

 error = VFS_ROOT(vp->v_mountedhere, lock_flags, newvp);
 if (error != 0) {
  AUTOFS_WARN("VFS_ROOT() failed with error %d", error);
  return (error);
 }

 return (0);
}
