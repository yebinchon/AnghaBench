
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct unlink_args {int path; } ;
struct thread {int dummy; } ;
struct filemon {int error; int fname1; } ;
struct TYPE_3__ {int p_pid; } ;


 int copyinstr (int ,int ,int,int *) ;
 TYPE_1__* curproc ;
 int filemon_drop (struct filemon*) ;
 int filemon_output_event (struct filemon*,char*,int ,int ) ;
 struct filemon* filemon_proc_get (TYPE_1__*) ;
 int sys_unlink (struct thread*,struct unlink_args*) ;

__attribute__((used)) static int
filemon_wrapper_unlink(struct thread *td, struct unlink_args *uap)
{
 int error, ret;
 struct filemon *filemon;

 if ((ret = sys_unlink(td, uap)) == 0) {
  if ((filemon = filemon_proc_get(curproc)) != ((void*)0)) {
   if ((error = copyinstr(uap->path, filemon->fname1,
       sizeof(filemon->fname1), ((void*)0))) != 0) {
    filemon->error = error;
    goto copyfail;
   }

   filemon_output_event(filemon, "D %d %s\n",
       curproc->p_pid, filemon->fname1);
copyfail:
   filemon_drop(filemon);
  }
 }

 return (ret);
}
