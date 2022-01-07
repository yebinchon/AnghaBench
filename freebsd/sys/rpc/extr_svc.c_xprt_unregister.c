
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sg_lock; } ;
struct TYPE_6__ {scalar_t__ xp_registered; TYPE_2__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCGROUP ;


 scalar_t__ FALSE ;
 int SVC_RELEASE (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xprt_unregister_locked (TYPE_1__*) ;

void
xprt_unregister(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;

 mtx_lock(&grp->sg_lock);
 if (xprt->xp_registered == FALSE) {

  mtx_unlock(&grp->sg_lock);
  return;
 }
 xprt_unregister_locked(xprt);
 mtx_unlock(&grp->sg_lock);

 SVC_RELEASE(xprt);
}
