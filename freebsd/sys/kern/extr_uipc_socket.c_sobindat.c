
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_bindat ) (int,struct socket*,struct sockaddr*,struct thread*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int stub1 (int,struct socket*,struct sockaddr*,struct thread*) ;

int
sobindat(int fd, struct socket *so, struct sockaddr *nam, struct thread *td)
{
 int error;

 CURVNET_SET(so->so_vnet);
 error = (*so->so_proto->pr_usrreqs->pru_bindat)(fd, so, nam, td);
 CURVNET_RESTORE();
 return (error);
}
