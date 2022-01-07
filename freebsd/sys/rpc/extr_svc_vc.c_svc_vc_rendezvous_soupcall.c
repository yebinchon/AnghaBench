
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sol_comp; } ;
typedef int SVCXPRT ;


 int SU_OK ;
 int TAILQ_EMPTY (int *) ;
 int xprt_active (int *) ;

__attribute__((used)) static int
svc_vc_rendezvous_soupcall(struct socket *head, void *arg, int waitflag)
{
 SVCXPRT *xprt = (SVCXPRT *) arg;

 if (!TAILQ_EMPTY(&head->sol_comp))
  xprt_active(xprt);
 return (SU_OK);
}
