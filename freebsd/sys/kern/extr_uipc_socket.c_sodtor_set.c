
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * so_dtor; } ;
typedef int so_dtor_t ;


 int SOCK_LOCK_ASSERT (struct socket*) ;

void
sodtor_set(struct socket *so, so_dtor_t *func)
{

 SOCK_LOCK_ASSERT(so);
 so->so_dtor = func;
}
