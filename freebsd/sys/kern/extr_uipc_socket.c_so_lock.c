
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SOCK_LOCK (struct socket*) ;

void
so_lock(struct socket *so)
{

 SOCK_LOCK(so);
}
