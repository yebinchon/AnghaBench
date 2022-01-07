
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sg_xlist; int sg_lock; } ;
struct TYPE_6__ {scalar_t__ xp_registered; TYPE_2__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCGROUP ;


 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ TRUE ;
 int mtx_assert (int *,int ) ;
 int xp_link ;
 int xprt_inactive_locked (TYPE_1__*) ;

__attribute__((used)) static void
xprt_unregister_locked(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;

 mtx_assert(&grp->sg_lock, MA_OWNED);
 KASSERT(xprt->xp_registered == TRUE,
     ("xprt_unregister_locked: not registered"));
 xprt_inactive_locked(xprt);
 TAILQ_REMOVE(&grp->sg_xlist, xprt, xp_link);
 xprt->xp_registered = FALSE;
}
