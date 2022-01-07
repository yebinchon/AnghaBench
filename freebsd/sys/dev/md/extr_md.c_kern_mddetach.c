
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct md_req {int dummy; } ;


 int kern_mddetach_locked (struct thread*,struct md_req*) ;
 int md_sx ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
kern_mddetach(struct thread *td, struct md_req *mdr)
{
 int error;

 sx_xlock(&md_sx);
 error = kern_mddetach_locked(td, mdr);
 sx_xunlock(&md_sx);
 return (error);
}
