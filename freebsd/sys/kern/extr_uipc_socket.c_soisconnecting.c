
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;

void
soisconnecting(struct socket *so)
{

 SOCK_LOCK(so);
 so->so_state &= ~(SS_ISCONNECTED|SS_ISDISCONNECTING);
 so->so_state |= SS_ISCONNECTING;
 SOCK_UNLOCK(so);
}
