
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sg_active; int sg_lock; } ;
struct TYPE_5__ {scalar_t__ xp_active; int * xp_thread; TYPE_2__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCGROUP ;


 scalar_t__ FALSE ;
 int MA_OWNED ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int mtx_assert (int *,int ) ;
 int xp_alink ;

void
xprt_inactive_locked(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;

 mtx_assert(&grp->sg_lock, MA_OWNED);
 if (xprt->xp_active) {
  if (xprt->xp_thread == ((void*)0))
   TAILQ_REMOVE(&grp->sg_active, xprt, xp_alink);
  xprt->xp_active = FALSE;
 }
}
