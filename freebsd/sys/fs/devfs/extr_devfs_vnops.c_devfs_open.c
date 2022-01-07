
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_mode; struct file* a_fp; struct vnode* a_vp; struct thread* a_td; } ;
struct vnode {scalar_t__ v_type; struct cdev* v_rdev; } ;
struct thread {struct file* td_fpop; } ;
struct file {int f_flag; int * f_ops; struct vnode* f_vnode; struct cdev* f_data; } ;
struct cdevsw {int (* d_fdopen ) (struct cdev*,int ,struct thread*,struct file*) ;int (* d_open ) (struct cdev*,int ,int ,struct thread*) ;} ;
struct cdev {scalar_t__ si_iosize_max; } ;


 scalar_t__ DFLTPHYS ;
 int DTYPE_VNODE ;
 int EINTR ;
 int ENXIO ;
 int ERESTART ;
 int KASSERT (int ,char*) ;
 int LK_RETRY ;
 int S_IFCHR ;
 scalar_t__ VBLK ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int badfileops ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int devfs_clear_cdevpriv () ;
 int devfs_ops_f ;
 int finit (struct file*,int ,int ,struct cdev*,int *) ;
 int stub1 (struct cdev*,int ,struct thread*,struct file*) ;
 int stub2 (struct cdev*,int ,int ,struct thread*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
devfs_open(struct vop_open_args *ap)
{
 struct thread *td = ap->a_td;
 struct vnode *vp = ap->a_vp;
 struct cdev *dev = vp->v_rdev;
 struct file *fp = ap->a_fp;
 int error, ref, vlocked;
 struct cdevsw *dsw;
 struct file *fpop;

 if (vp->v_type == VBLK)
  return (ENXIO);

 if (dev == ((void*)0))
  return (ENXIO);


 if (dev->si_iosize_max == 0)
  dev->si_iosize_max = DFLTPHYS;

 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 if (fp == ((void*)0) && dsw->d_fdopen != ((void*)0)) {
  dev_relthread(dev, ref);
  return (ENXIO);
 }

 vlocked = VOP_ISLOCKED(vp);
 VOP_UNLOCK(vp, 0);

 fpop = td->td_fpop;
 td->td_fpop = fp;
 if (fp != ((void*)0)) {
  fp->f_data = dev;
  fp->f_vnode = vp;
 }
 if (dsw->d_fdopen != ((void*)0))
  error = dsw->d_fdopen(dev, ap->a_mode, td, fp);
 else
  error = dsw->d_open(dev, ap->a_mode, S_IFCHR, td);

 if (error != 0)
  devfs_clear_cdevpriv();
 td->td_fpop = fpop;

 vn_lock(vp, vlocked | LK_RETRY);
 dev_relthread(dev, ref);
 if (error != 0) {
  if (error == ERESTART)
   error = EINTR;
  return (error);
 }




 if (fp == ((void*)0))
  return (error);

 if (fp->f_ops == &badfileops)
  finit(fp, fp->f_flag, DTYPE_VNODE, dev, &devfs_ops_f);
 return (error);
}
