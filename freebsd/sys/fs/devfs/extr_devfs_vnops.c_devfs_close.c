
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vop_close_args {int a_fflag; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int v_iflag; int * v_data; struct cdev* v_rdev; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_session; } ;
struct cdevsw {int d_flags; int (* d_close ) (struct cdev*,int,int ,struct thread*) ;} ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_3__ {int * s_ttydp; struct vnode* s_ttyvp; } ;


 int D_TRACKCLOSE ;
 int ENXIO ;
 int FLASTCLOSE ;
 int FNONBLOCK ;
 int FREVOKE ;
 int KASSERT (int,char*) ;
 int LK_RETRY ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SESS_LOCK (TYPE_1__*) ;
 int SESS_UNLOCK (TYPE_1__*) ;
 int S_IFCHR ;
 int VI_DOOMED ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int count_dev (struct cdev*) ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int devtoname (struct cdev*) ;
 int proctree_lock ;
 int stub1 (struct cdev*,int,int ,struct thread*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vdrop (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
devfs_close(struct vop_close_args *ap)
{
 struct vnode *vp = ap->a_vp, *oldvp;
 struct thread *td = ap->a_td;
 struct proc *p;
 struct cdev *dev = vp->v_rdev;
 struct cdevsw *dsw;
 int dflags, error, ref, vp_locked;





 if (vp->v_data == ((void*)0))
  return (0);
 if (td != ((void*)0)) {
  p = td->td_proc;
  PROC_LOCK(p);
  if (vp == p->p_session->s_ttyvp) {
   PROC_UNLOCK(p);
   oldvp = ((void*)0);
   sx_xlock(&proctree_lock);
   if (vp == p->p_session->s_ttyvp) {
    SESS_LOCK(p->p_session);
    VI_LOCK(vp);
    if (count_dev(dev) == 2 &&
        (vp->v_iflag & VI_DOOMED) == 0) {
     p->p_session->s_ttyvp = ((void*)0);
     p->p_session->s_ttydp = ((void*)0);
     oldvp = vp;
    }
    VI_UNLOCK(vp);
    SESS_UNLOCK(p->p_session);
   }
   sx_xunlock(&proctree_lock);
   if (oldvp != ((void*)0))
    vrele(oldvp);
  } else
   PROC_UNLOCK(p);
 }
 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 dflags = 0;
 VI_LOCK(vp);
 if (vp->v_iflag & VI_DOOMED) {

  dflags |= FREVOKE | FNONBLOCK;
 } else if (dsw->d_flags & D_TRACKCLOSE) {

 } else if (count_dev(dev) > 1) {
  VI_UNLOCK(vp);
  dev_relthread(dev, ref);
  return (0);
 }
 if (count_dev(dev) == 1)
  dflags |= FLASTCLOSE;
 vholdl(vp);
 VI_UNLOCK(vp);
 vp_locked = VOP_ISLOCKED(vp);
 VOP_UNLOCK(vp, 0);
 KASSERT(dev->si_refcount > 0,
     ("devfs_close() on un-referenced struct cdev *(%s)", devtoname(dev)));
 error = dsw->d_close(dev, ap->a_fflag | dflags, S_IFCHR, td);
 dev_relthread(dev, ref);
 vn_lock(vp, vp_locked | LK_RETRY);
 vdrop(vp);
 return (error);
}
