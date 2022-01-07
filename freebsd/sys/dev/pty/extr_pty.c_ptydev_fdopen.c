
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef int name ;


 int EBUSY ;
 int FREAD ;
 int FWRITE ;
 int atomic_cmpset_ptr (uintptr_t*,int ,int) ;
 int counted_warning (int *,char*) ;
 int destroy_dev_sched (struct cdev*) ;
 int devtoname (struct cdev*) ;
 int pts_alloc_external (int,struct thread*,struct file*,struct cdev*,char*) ;
 int pty_warningcnt ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static int
ptydev_fdopen(struct cdev *dev, int fflags, struct thread *td, struct file *fp)
{
 int error;
 char name[6];

 if (!atomic_cmpset_ptr((uintptr_t *)&dev->si_drv1, 0, 1))
  return (EBUSY);


 strlcpy(name, devtoname(dev), sizeof(name));
 name[0] = 't';

 error = pts_alloc_external(fflags & (FREAD|FWRITE), td, fp, dev, name);
 if (error != 0) {
  destroy_dev_sched(dev);
  return (error);
 }


 counted_warning(&pty_warningcnt, "is using legacy pty devices");

 return (0);
}
