
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getsockname_args {int dummy; } ;


 int getsockname1 (struct thread*,struct getsockname_args*,int ) ;

int
sys_getsockname(struct thread *td, struct getsockname_args *uap)
{

 return (getsockname1(td, uap, 0));
}
