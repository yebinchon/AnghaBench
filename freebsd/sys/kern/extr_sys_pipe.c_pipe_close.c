
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct file {int * f_data; int * f_ops; int * f_vnode; } ;
struct TYPE_2__ {int (* fo_close ) (struct file*,struct thread*) ;} ;


 int badfileops ;
 int pipe_dtor (int *) ;
 int stub1 (struct file*,struct thread*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
pipe_close(struct file *fp, struct thread *td)
{

 if (fp->f_vnode != ((void*)0))
  return vnops.fo_close(fp, td);
 fp->f_ops = &badfileops;
 pipe_dtor(fp->f_data);
 fp->f_data = ((void*)0);
 return (0);
}
