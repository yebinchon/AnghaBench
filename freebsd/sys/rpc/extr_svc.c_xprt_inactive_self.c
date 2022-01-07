
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xp_active; int * xp_thread; } ;
typedef TYPE_1__ SVCXPRT ;


 int FALSE ;
 int KASSERT (int ,char*) ;

void
xprt_inactive_self(SVCXPRT *xprt)
{

 KASSERT(xprt->xp_thread != ((void*)0),
     ("xprt_inactive_self(%p) with NULL xp_thread", xprt));
 xprt->xp_active = FALSE;
}
