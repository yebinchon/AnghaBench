
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int sg_lock; } ;
struct TYPE_6__ {int sp_sysctl; scalar_t__ sp_rcache; int sp_lock; TYPE_2__* sp_groups; } ;
typedef TYPE_1__ SVCPOOL ;
typedef TYPE_2__ SVCGROUP ;


 int M_RPC ;
 int SVC_MAXGROUPS ;
 int free (TYPE_1__*,int ) ;
 int mtx_destroy (int *) ;
 int replay_freecache (scalar_t__) ;
 int svcpool_cleanup (TYPE_1__*) ;
 int sysctl_ctx_free (int *) ;

void
svcpool_destroy(SVCPOOL *pool)
{
 SVCGROUP *grp;
 int g;

 svcpool_cleanup(pool);

 for (g = 0; g < SVC_MAXGROUPS; g++) {
  grp = &pool->sp_groups[g];
  mtx_destroy(&grp->sg_lock);
 }
 mtx_destroy(&pool->sp_lock);

 if (pool->sp_rcache)
  replay_freecache(pool->sp_rcache);

 sysctl_ctx_free(&pool->sp_sysctl);
 free(pool, M_RPC);
}
