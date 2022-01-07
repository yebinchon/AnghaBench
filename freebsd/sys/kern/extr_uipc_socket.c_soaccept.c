
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_accept ) (struct socket*,struct sockaddr**) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int KASSERT (int,char*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SS_NOFDREF ;
 int stub1 (struct socket*,struct sockaddr**) ;

int
soaccept(struct socket *so, struct sockaddr **nam)
{
 int error;

 SOCK_LOCK(so);
 KASSERT((so->so_state & SS_NOFDREF) != 0, ("soaccept: !NOFDREF"));
 so->so_state &= ~SS_NOFDREF;
 SOCK_UNLOCK(so);

 CURVNET_SET(so->so_vnet);
 error = (*so->so_proto->pr_usrreqs->pru_accept)(so, nam);
 CURVNET_RESTORE();
 return (error);
}
