
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {void* sol_upcallarg; int sol_upcall; } ;
typedef int so_upcall_t ;


 int SOLISTEN_LOCK_ASSERT (struct socket*) ;

void
solisten_upcall_set(struct socket *so, so_upcall_t func, void *arg)
{

 SOLISTEN_LOCK_ASSERT(so);
 so->sol_upcall = func;
 so->sol_upcallarg = arg;
}
