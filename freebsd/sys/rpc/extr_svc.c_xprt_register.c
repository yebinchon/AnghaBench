
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sg_lock; int sg_xlist; } ;
struct TYPE_8__ {int sp_groupcount; TYPE_3__* sp_groups; int sp_nextgroup; } ;
struct TYPE_7__ {int xp_active; int xp_registered; TYPE_3__* xp_group; TYPE_2__* xp_pool; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCPOOL ;
typedef TYPE_3__ SVCGROUP ;


 int FALSE ;
 int SVC_ACQUIRE (TYPE_1__*) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TRUE ;
 int atomic_fetchadd_int (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xp_link ;

void
xprt_register(SVCXPRT *xprt)
{
 SVCPOOL *pool = xprt->xp_pool;
 SVCGROUP *grp;
 int g;

 SVC_ACQUIRE(xprt);
 g = atomic_fetchadd_int(&pool->sp_nextgroup, 1) % pool->sp_groupcount;
 xprt->xp_group = grp = &pool->sp_groups[g];
 mtx_lock(&grp->sg_lock);
 xprt->xp_registered = TRUE;
 xprt->xp_active = FALSE;
 TAILQ_INSERT_TAIL(&grp->sg_xlist, xprt, xp_link);
 mtx_unlock(&grp->sg_lock);
}
