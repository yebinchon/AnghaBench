
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sg_lock; int sg_state; } ;
struct TYPE_5__ {TYPE_2__* sp_groups; int sp_lock; int sp_state; } ;
typedef TYPE_1__ SVCPOOL ;
typedef TYPE_2__ SVCGROUP ;


 int SVCPOOL_ACTIVE ;
 int SVCPOOL_INIT ;
 int SVC_MAXGROUPS ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int svcpool_cleanup (TYPE_1__*) ;

void
svcpool_close(SVCPOOL *pool)
{
 SVCGROUP *grp;
 int g;

 svcpool_cleanup(pool);


 mtx_lock(&pool->sp_lock);
 pool->sp_state = SVCPOOL_INIT;
 mtx_unlock(&pool->sp_lock);
 for (g = 0; g < SVC_MAXGROUPS; g++) {
  grp = &pool->sp_groups[g];
  mtx_lock(&grp->sg_lock);
  grp->sg_state = SVCPOOL_ACTIVE;
  mtx_unlock(&grp->sg_lock);
 }
}
