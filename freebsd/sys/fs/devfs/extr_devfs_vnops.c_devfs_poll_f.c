
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {struct file* td_fpop; } ;
struct file {int dummy; } ;
struct cdevsw {int (* d_poll ) (struct cdev*,int,struct thread*) ;} ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* fo_poll ) (struct file*,int,struct ucred*,struct thread*) ;} ;


 int dev_relthread (struct cdev*,int) ;
 int devfs_fp_check (struct file*,struct cdev**,struct cdevsw**,int*) ;
 int stub1 (struct file*,int,struct ucred*,struct thread*) ;
 int stub2 (struct cdev*,int,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
devfs_poll_f(struct file *fp, int events, struct ucred *cred, struct thread *td)
{
 struct cdev *dev;
 struct cdevsw *dsw;
 int error, ref;
 struct file *fpop;

 fpop = td->td_fpop;
 error = devfs_fp_check(fp, &dev, &dsw, &ref);
 if (error != 0) {
  error = vnops.fo_poll(fp, events, cred, td);
  return (error);
 }
 error = dsw->d_poll(dev, events, td);
 td->td_fpop = fpop;
 dev_relthread(dev, ref);
 return(error);
}
