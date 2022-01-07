
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sendfile_args {int dummy; } ;


 int sendfile (struct thread*,struct sendfile_args*,int ) ;

int
sys_sendfile(struct thread *td, struct sendfile_args *uap)
{

 return (sendfile(td, uap, 0));
}
