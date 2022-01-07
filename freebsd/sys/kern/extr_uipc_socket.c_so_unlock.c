
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SOCK_UNLOCK (struct socket*) ;

void
so_unlock(struct socket *so)
{

 SOCK_UNLOCK(so);
}
