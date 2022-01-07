
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cf_conn {int strm_stat; } ;
struct TYPE_4__ {int * xp_ops; int * xp_p2; struct cf_conn* xp_p1; int * xp_socket; int * xp_pool; int xp_lock; } ;
typedef TYPE_1__ SVCXPRT ;
typedef int SVCPOOL ;


 int XPRT_IDLE ;
 struct cf_conn* mem_alloc (int) ;
 int svc_vc_backchannel_ops ;
 TYPE_1__* svc_xprt_alloc () ;
 int sx_init (int *,char*) ;

SVCXPRT *
svc_vc_create_backchannel(SVCPOOL *pool)
{
 SVCXPRT *xprt = ((void*)0);
 struct cf_conn *cd = ((void*)0);

 cd = mem_alloc(sizeof(*cd));
 cd->strm_stat = XPRT_IDLE;

 xprt = svc_xprt_alloc();
 sx_init(&xprt->xp_lock, "xprt->xp_lock");
 xprt->xp_pool = pool;
 xprt->xp_socket = ((void*)0);
 xprt->xp_p1 = cd;
 xprt->xp_p2 = ((void*)0);
 xprt->xp_ops = &svc_vc_backchannel_ops;
 return (xprt);
}
