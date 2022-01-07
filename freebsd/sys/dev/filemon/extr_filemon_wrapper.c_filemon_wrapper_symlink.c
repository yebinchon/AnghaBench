
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct symlink_args {int link; int path; } ;


 int _filemon_wrapper_link (struct thread*,int ,int ) ;
 int sys_symlink (struct thread*,struct symlink_args*) ;

__attribute__((used)) static int
filemon_wrapper_symlink(struct thread *td, struct symlink_args *uap)
{
 int ret;

 if ((ret = sys_symlink(td, uap)) == 0)
  _filemon_wrapper_link(td, uap->path, uap->link);

 return (ret);
}
