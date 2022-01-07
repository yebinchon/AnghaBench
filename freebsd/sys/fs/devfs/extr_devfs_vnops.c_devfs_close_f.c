
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct file {int * f_cdevpriv; } ;
struct TYPE_4__ {struct file* td_fpop; } ;
struct TYPE_3__ {int (* fo_close ) (struct file*,struct thread*) ;} ;


 TYPE_2__* curthread ;
 int devfs_fpdrop (struct file*) ;
 int stub1 (struct file*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
devfs_close_f(struct file *fp, struct thread *td)
{
 int error;
 struct file *fpop;





 fpop = curthread->td_fpop;
 curthread->td_fpop = fp;
 error = vnops.fo_close(fp, td);
 curthread->td_fpop = fpop;





 if (fp->f_cdevpriv != ((void*)0))
  devfs_fpdrop(fp);
 return (error);
}
