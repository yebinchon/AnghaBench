
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_listen ) (struct socket*,int,struct thread*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int stub1 (struct socket*,int,struct thread*) ;

int
solisten(struct socket *so, int backlog, struct thread *td)
{
 int error;

 CURVNET_SET(so->so_vnet);
 error = (*so->so_proto->pr_usrreqs->pru_listen)(so, backlog, td);
 CURVNET_RESTORE();
 return (error);
}
