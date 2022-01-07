
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_3__ {int xp_socket; } ;
typedef TYPE_1__ SVCXPRT ;


 int SU_OK ;
 scalar_t__ soreadable (int ) ;
 int xprt_active (TYPE_1__*) ;

__attribute__((used)) static int
svc_vc_soupcall(struct socket *so, void *arg, int waitflag)
{
 SVCXPRT *xprt = (SVCXPRT *) arg;

 if (soreadable(xprt->xp_socket))
  xprt_active(xprt);
 return (SU_OK);
}
