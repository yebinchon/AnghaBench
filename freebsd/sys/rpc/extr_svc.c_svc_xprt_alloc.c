
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xp_refs; int * xp_p3; } ;
typedef int SVCXPRT_EXT ;
typedef TYPE_1__ SVCXPRT ;


 void* mem_alloc (int) ;
 int refcount_init (int *,int) ;

SVCXPRT *
svc_xprt_alloc(void)
{
 SVCXPRT *xprt;
 SVCXPRT_EXT *ext;

 xprt = mem_alloc(sizeof(SVCXPRT));
 ext = mem_alloc(sizeof(SVCXPRT_EXT));
 xprt->xp_p3 = ext;
 refcount_init(&xprt->xp_refs, 1);

 return (xprt);
}
