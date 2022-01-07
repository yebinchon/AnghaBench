
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct link_args {int link; int path; } ;


 int _filemon_wrapper_link (struct thread*,int ,int ) ;
 int sys_link (struct thread*,struct link_args*) ;

__attribute__((used)) static int
filemon_wrapper_link(struct thread *td, struct link_args *uap)
{
 int ret;

 if ((ret = sys_link(td, uap)) == 0)
  _filemon_wrapper_link(td, uap->path, uap->link);

 return (ret);
}
