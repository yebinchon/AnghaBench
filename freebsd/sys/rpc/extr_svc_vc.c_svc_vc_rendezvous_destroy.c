
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xp_socket; scalar_t__ xp_upcallset; } ;
typedef TYPE_1__ SVCXPRT ;


 int SOLISTEN_LOCK (int ) ;
 int SOLISTEN_UNLOCK (int ) ;
 int solisten_upcall_set (int ,int *,int *) ;
 int svc_vc_destroy_common (TYPE_1__*) ;

__attribute__((used)) static void
svc_vc_rendezvous_destroy(SVCXPRT *xprt)
{

 SOLISTEN_LOCK(xprt->xp_socket);
 if (xprt->xp_upcallset) {
  xprt->xp_upcallset = 0;
  solisten_upcall_set(xprt->xp_socket, ((void*)0), ((void*)0));
 }
 SOLISTEN_UNLOCK(xprt->xp_socket);

 svc_vc_destroy_common(xprt);
}
