
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sg_lock; int sg_active; } ;
struct TYPE_4__ {int sp_groupcount; TYPE_2__* sp_groups; } ;
typedef int SVCXPRT ;
typedef TYPE_1__ SVCPOOL ;
typedef TYPE_2__ SVCGROUP ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xp_alink ;
 scalar_t__ xprt_assignthread (int *) ;

__attribute__((used)) static void
svc_assign_waiting_sockets(SVCPOOL *pool)
{
 SVCGROUP *grp;
 SVCXPRT *xprt;
 int g;

 for (g = 0; g < pool->sp_groupcount; g++) {
  grp = &pool->sp_groups[g];
  mtx_lock(&grp->sg_lock);
  while ((xprt = TAILQ_FIRST(&grp->sg_active)) != ((void*)0)) {
   if (xprt_assignthread(xprt))
    TAILQ_REMOVE(&grp->sg_active, xprt, xp_alink);
   else
    break;
  }
  mtx_unlock(&grp->sg_lock);
 }
}
