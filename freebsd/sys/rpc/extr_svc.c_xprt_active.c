
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sg_lock; int sg_active; } ;
struct TYPE_6__ {int xp_pool; int * xp_thread; scalar_t__ xp_active; int xp_registered; TYPE_2__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCGROUP ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 scalar_t__ TRUE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int svc_request_space_available (int ) ;
 int xp_alink ;
 int xprt_assignthread (TYPE_1__*) ;

void
xprt_active(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;

 mtx_lock(&grp->sg_lock);

 if (!xprt->xp_registered) {



  mtx_unlock(&grp->sg_lock);
  return;
 }

 if (!xprt->xp_active) {
  xprt->xp_active = TRUE;
  if (xprt->xp_thread == ((void*)0)) {
   if (!svc_request_space_available(xprt->xp_pool) ||
       !xprt_assignthread(xprt))
    TAILQ_INSERT_TAIL(&grp->sg_active, xprt,
        xp_alink);
  }
 }

 mtx_unlock(&grp->sg_lock);
}
