
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getpeername_args {int dummy; } ;


 int getpeername1 (struct thread*,struct getpeername_args*,int ) ;

int
sys_getpeername(struct thread *td, struct getpeername_args *uap)
{

 return (getpeername1(td, uap, 0));
}
