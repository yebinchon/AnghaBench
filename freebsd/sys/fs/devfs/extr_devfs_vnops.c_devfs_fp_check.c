
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cdev* f_data; int f_vnode; } ;
struct cdevsw {int dummy; } ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_2__ {struct file* td_fpop; } ;


 int ENXIO ;
 int KASSERT (int,char*) ;
 TYPE_1__* curthread ;
 int dev_relthread (struct cdev*,int) ;
 int devtoname (struct cdev*) ;
 struct cdevsw* devvn_refthread (int ,struct cdev**,int*) ;

__attribute__((used)) static int
devfs_fp_check(struct file *fp, struct cdev **devp, struct cdevsw **dswp,
    int *ref)
{

 *dswp = devvn_refthread(fp->f_vnode, devp, ref);
 if (*devp != fp->f_data) {
  if (*dswp != ((void*)0))
   dev_relthread(*devp, *ref);
  return (ENXIO);
 }
 KASSERT((*devp)->si_refcount > 0,
     ("devfs: un-referenced struct cdev *(%s)", devtoname(*devp)));
 if (*dswp == ((void*)0))
  return (ENXIO);
 curthread->td_fpop = fp;
 return (0);
}
