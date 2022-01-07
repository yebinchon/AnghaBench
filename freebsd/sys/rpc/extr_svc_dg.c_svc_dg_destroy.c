
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int so_rcv; } ;
struct TYPE_6__ {scalar_t__ xp_netid; TYPE_4__* xp_socket; int xp_lock; } ;
typedef TYPE_1__ SVCXPRT ;


 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_RCV ;
 int mem_free (scalar_t__,scalar_t__) ;
 int soclose (TYPE_4__*) ;
 int soupcall_clear (TYPE_4__*,int ) ;
 scalar_t__ strlen (scalar_t__) ;
 int svc_xprt_free (TYPE_1__*) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
svc_dg_destroy(SVCXPRT *xprt)
{

 SOCKBUF_LOCK(&xprt->xp_socket->so_rcv);
 soupcall_clear(xprt->xp_socket, SO_RCV);
 SOCKBUF_UNLOCK(&xprt->xp_socket->so_rcv);

 sx_destroy(&xprt->xp_lock);
 if (xprt->xp_socket)
  (void)soclose(xprt->xp_socket);

 if (xprt->xp_netid)
  (void) mem_free(xprt->xp_netid, strlen(xprt->xp_netid) + 1);
 svc_xprt_free(xprt);
}
