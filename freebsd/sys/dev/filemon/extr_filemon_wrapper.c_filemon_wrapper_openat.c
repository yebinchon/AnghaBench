
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct openat_args {int fd; int flag; int path; } ;


 int _filemon_wrapper_openat (struct thread*,int ,int ,int ) ;
 int sys_openat (struct thread*,struct openat_args*) ;

__attribute__((used)) static int
filemon_wrapper_openat(struct thread *td, struct openat_args *uap)
{
 int ret;

 if ((ret = sys_openat(td, uap)) == 0)
  _filemon_wrapper_openat(td, uap->path, uap->flag, uap->fd);

 return (ret);
}
