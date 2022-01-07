
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_count; int so_state; TYPE_2__* so_proto; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_abort ) (struct socket*) ;} ;


 int KASSERT (int,char*) ;
 int SOCK_LOCK (struct socket*) ;
 int SS_NOFDREF ;
 int SS_PROTOREF ;
 int VNET_SO_ASSERT (struct socket*) ;
 int sofree (struct socket*) ;
 int stub1 (struct socket*) ;

void
soabort(struct socket *so)
{







 KASSERT(so->so_count == 0, ("soabort: so_count"));
 KASSERT((so->so_state & SS_PROTOREF) == 0, ("soabort: SS_PROTOREF"));
 KASSERT(so->so_state & SS_NOFDREF, ("soabort: !SS_NOFDREF"));
 VNET_SO_ASSERT(so);

 if (so->so_proto->pr_usrreqs->pru_abort != ((void*)0))
  (*so->so_proto->pr_usrreqs->pru_abort)(so);
 SOCK_LOCK(so);
 sofree(so);
}
