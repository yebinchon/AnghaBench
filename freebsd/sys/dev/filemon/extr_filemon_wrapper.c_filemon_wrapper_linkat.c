
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linkat_args {int path2; int path1; } ;


 int _filemon_wrapper_link (struct thread*,int ,int ) ;
 int sys_linkat (struct thread*,struct linkat_args*) ;

__attribute__((used)) static int
filemon_wrapper_linkat(struct thread *td, struct linkat_args *uap)
{
 int ret;

 if ((ret = sys_linkat(td, uap)) == 0)
  _filemon_wrapper_link(td, uap->path1, uap->path2);

 return (ret);
}
