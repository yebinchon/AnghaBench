
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct open_args {int flags; int path; } ;


 int AT_FDCWD ;
 int _filemon_wrapper_openat (struct thread*,int ,int ,int ) ;
 int sys_open (struct thread*,struct open_args*) ;

__attribute__((used)) static int
filemon_wrapper_open(struct thread *td, struct open_args *uap)
{
 int ret;

 if ((ret = sys_open(td, uap)) == 0)
  _filemon_wrapper_openat(td, uap->path, uap->flags, AT_FDCWD);

 return (ret);
}
