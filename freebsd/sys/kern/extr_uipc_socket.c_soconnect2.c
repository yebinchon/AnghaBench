
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; int so_vnet; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_connect2 ) (struct socket*,struct socket*) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int stub1 (struct socket*,struct socket*) ;

int
soconnect2(struct socket *so1, struct socket *so2)
{
 int error;

 CURVNET_SET(so1->so_vnet);
 error = (*so1->so_proto->pr_usrreqs->pru_connect2)(so1, so2);
 CURVNET_RESTORE();
 return (error);
}
