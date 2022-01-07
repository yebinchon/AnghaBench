
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_iflag; struct autofs_node* v_data; int v_vflag; int v_type; } ;
struct mount {int dummy; } ;
struct autofs_node {int an_vnode_lock; struct vnode* an_vnode; int * an_parent; int an_mount; } ;


 int AUTOFS_ASSERT_UNLOCKED (int ) ;
 int AUTOFS_DEBUG (char*,...) ;
 int AUTOFS_WARN (char*,int) ;
 int ENOENT ;
 int KASSERT (int ,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int VDIR ;
 int VI_DOOMED ;
 int VN_LOCK_ASHARE (struct vnode*) ;
 int VV_ROOT ;
 int autofs_vnodeops ;
 int curthread ;
 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 int insmntque (struct vnode*,struct mount*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vdrop (struct vnode*) ;
 int vget (struct vnode*,int,int ) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;

int
autofs_node_vn(struct autofs_node *anp, struct mount *mp, int flags,
    struct vnode **vpp)
{
 struct vnode *vp;
 int error;

 AUTOFS_ASSERT_UNLOCKED(anp->an_mount);

 sx_xlock(&anp->an_vnode_lock);

 vp = anp->an_vnode;
 if (vp != ((void*)0)) {
  error = vget(vp, flags | LK_RETRY, curthread);
  if (error != 0) {
   AUTOFS_WARN("vget failed with error %d", error);
   sx_xunlock(&anp->an_vnode_lock);
   return (error);
  }
  if (vp->v_iflag & VI_DOOMED) {



   AUTOFS_DEBUG("doomed vnode");
   sx_xunlock(&anp->an_vnode_lock);
   vput(vp);

   return (ENOENT);
  }

  *vpp = vp;
  sx_xunlock(&anp->an_vnode_lock);
  return (0);
 }

 error = getnewvnode("autofs", mp, &autofs_vnodeops, &vp);
 if (error != 0) {
  sx_xunlock(&anp->an_vnode_lock);
  return (error);
 }

 error = vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 if (error != 0) {
  sx_xunlock(&anp->an_vnode_lock);
  vdrop(vp);
  return (error);
 }

 vp->v_type = VDIR;
 if (anp->an_parent == ((void*)0))
  vp->v_vflag |= VV_ROOT;
 vp->v_data = anp;

 VN_LOCK_ASHARE(vp);

 error = insmntque(vp, mp);
 if (error != 0) {
  AUTOFS_DEBUG("insmntque() failed with error %d", error);
  sx_xunlock(&anp->an_vnode_lock);
  return (error);
 }

 KASSERT(anp->an_vnode == ((void*)0), ("lost race"));
 anp->an_vnode = vp;

 sx_xunlock(&anp->an_vnode_lock);

 *vpp = vp;
 return (0);
}
