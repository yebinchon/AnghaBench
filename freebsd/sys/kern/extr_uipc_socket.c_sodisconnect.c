
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_state; TYPE_2__* so_proto; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_disconnect ) (struct socket*) ;} ;


 int EALREADY ;
 int ENOTCONN ;
 int SS_ISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int VNET_SO_ASSERT (struct socket*) ;
 int stub1 (struct socket*) ;

int
sodisconnect(struct socket *so)
{
 int error;

 if ((so->so_state & SS_ISCONNECTED) == 0)
  return (ENOTCONN);
 if (so->so_state & SS_ISDISCONNECTING)
  return (EALREADY);
 VNET_SO_ASSERT(so);
 error = (*so->so_proto->pr_usrreqs->pru_disconnect)(so);
 return (error);
}
