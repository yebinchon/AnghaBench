
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xp_netid; scalar_t__ xp_socket; } ;
typedef TYPE_1__ SVCXPRT ;


 int mem_free (scalar_t__,scalar_t__) ;
 int soclose (scalar_t__) ;
 scalar_t__ strlen (scalar_t__) ;
 int svc_xprt_free (TYPE_1__*) ;

__attribute__((used)) static void
svc_vc_destroy_common(SVCXPRT *xprt)
{

 if (xprt->xp_socket)
  (void)soclose(xprt->xp_socket);

 if (xprt->xp_netid)
  (void) mem_free(xprt->xp_netid, strlen(xprt->xp_netid) + 1);
 svc_xprt_free(xprt);
}
