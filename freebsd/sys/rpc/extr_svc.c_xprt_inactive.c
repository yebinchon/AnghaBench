
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sg_lock; } ;
struct TYPE_5__ {TYPE_2__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCGROUP ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xprt_inactive_locked (TYPE_1__*) ;

void
xprt_inactive(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;

 mtx_lock(&grp->sg_lock);
 xprt_inactive_locked(xprt);
 mtx_unlock(&grp->sg_lock);
}
