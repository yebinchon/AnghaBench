
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct vop_ioctl_args {int a_command; int a_fflag; struct fiodgname_arg* a_data; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct fiodgname_arg {int len; } ;
struct cdevsw {int d_flags; int (* d_ioctl ) (struct cdev*,int,struct fiodgname_arg*,int ,struct thread*) ;} ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_5__ {int s_ttydp; struct vnode* s_ttyvp; } ;
struct TYPE_4__ {TYPE_2__* p_session; } ;


 int D_TYPEMASK ;
 int EINVAL ;
 int ENOIOCTL ;
 int ENOTTY ;
 int ENXIO ;



 int KASSERT (int,char*) ;
 int SESS_LOCK (TYPE_2__*) ;
 int SESS_UNLOCK (TYPE_2__*) ;
 int TIOCSCTTY ;
 int VREF (struct vnode*) ;
 int cdev2priv (struct cdev*) ;
 int copyout (char const*,int ,int) ;
 int dev_relthread (struct cdev*,int) ;
 char* devtoname (struct cdev*) ;
 struct cdevsw* devvn_refthread (struct vnode*,struct cdev**,int*) ;
 int fiodgname_buf_get_ptr (struct fiodgname_arg*,int) ;
 int proctree_lock ;
 int strlen (char const*) ;
 int stub1 (struct cdev*,int,struct fiodgname_arg*,int ,struct thread*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
devfs_ioctl(struct vop_ioctl_args *ap)
{
 struct fiodgname_arg *fgn;
 struct vnode *vpold, *vp;
 struct cdevsw *dsw;
 struct thread *td;
 struct cdev *dev;
 int error, ref, i;
 const char *p;
 u_long com;

 vp = ap->a_vp;
 com = ap->a_command;
 td = ap->a_td;

 dsw = devvn_refthread(vp, &dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 KASSERT(dev->si_refcount > 0,
     ("devfs: un-referenced struct cdev *(%s)", devtoname(dev)));

 switch (com) {
 case 128:
  *(int *)ap->a_data = dsw->d_flags & D_TYPEMASK;
  error = 0;
  break;
 case 130:



  fgn = ap->a_data;
  p = devtoname(dev);
  i = strlen(p) + 1;
  if (i > fgn->len)
   error = EINVAL;
  else
   error = copyout(p, fiodgname_buf_get_ptr(fgn, com), i);
  break;
 default:
  error = dsw->d_ioctl(dev, com, ap->a_data, ap->a_fflag, td);
 }

 dev_relthread(dev, ref);
 if (error == ENOIOCTL)
  error = ENOTTY;

 if (error == 0 && com == TIOCSCTTY) {

  sx_slock(&proctree_lock);
  if (td->td_proc->p_session->s_ttyvp == vp) {
   sx_sunlock(&proctree_lock);
   return (0);
  }

  vpold = td->td_proc->p_session->s_ttyvp;
  VREF(vp);
  SESS_LOCK(td->td_proc->p_session);
  td->td_proc->p_session->s_ttyvp = vp;
  td->td_proc->p_session->s_ttydp = cdev2priv(dev);
  SESS_UNLOCK(td->td_proc->p_session);

  sx_sunlock(&proctree_lock);


  if (vpold)
   vrele(vpold);
 }
 return (error);
}
