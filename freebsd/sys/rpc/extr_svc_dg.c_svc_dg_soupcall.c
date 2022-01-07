
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int SVCXPRT ;


 int SU_OK ;
 int xprt_active (int *) ;

__attribute__((used)) static int
svc_dg_soupcall(struct socket *so, void *arg, int waitflag)
{
 SVCXPRT *xprt = (SVCXPRT *) arg;

 xprt_active(xprt);
 return (SU_OK);
}
