
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct sysctl_oid_list {int dummy; } ;
struct TYPE_7__ {int sg_minthreads; int sg_maxthreads; int sg_idlethreads; int sg_active; int sg_xlist; int sg_state; TYPE_1__* sg_pool; int sg_lock; } ;
struct TYPE_6__ {char const* sp_name; int sp_minthreads; int sp_maxthreads; int sp_groupcount; int sp_space_high; int sp_space_low; int sp_space_used; int sp_space_used_highest; int sp_space_throttled; int sp_space_throttle_count; int sp_sysctl; TYPE_2__* sp_groups; int sp_lcallouts; int sp_callouts; int * sp_proc; int sp_state; int sp_lock; } ;
typedef TYPE_1__ SVCPOOL ;
typedef TYPE_2__ SVCGROUP ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int LIST_INIT (int *) ;
 int MCLBYTES ;
 int MTX_DEF ;
 int M_RPC ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SVCPOOL_ACTIVE ;
 int SVCPOOL_INIT ;
 int SVC_MAXGROUPS ;
 int SYSCTL_ADD_INT (int *,struct sysctl_oid_list*,int ,char*,int,int*,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,struct sysctl_oid_list*,int ,char*,int,TYPE_1__*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_ULONG (int *,struct sysctl_oid_list*,int ,char*,int,int*,char*) ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ nmbclusters ;
 int svcpool_maxthread_sysctl ;
 int svcpool_minthread_sysctl ;
 int svcpool_threads_sysctl ;
 int sysctl_ctx_init (int *) ;

SVCPOOL*
svcpool_create(const char *name, struct sysctl_oid_list *sysctl_base)
{
 SVCPOOL *pool;
 SVCGROUP *grp;
 int g;

 pool = malloc(sizeof(SVCPOOL), M_RPC, M_WAITOK|M_ZERO);

 mtx_init(&pool->sp_lock, "sp_lock", ((void*)0), MTX_DEF);
 pool->sp_name = name;
 pool->sp_state = SVCPOOL_INIT;
 pool->sp_proc = ((void*)0);
 TAILQ_INIT(&pool->sp_callouts);
 TAILQ_INIT(&pool->sp_lcallouts);
 pool->sp_minthreads = 1;
 pool->sp_maxthreads = 1;
 pool->sp_groupcount = 1;
 for (g = 0; g < SVC_MAXGROUPS; g++) {
  grp = &pool->sp_groups[g];
  mtx_init(&grp->sg_lock, "sg_lock", ((void*)0), MTX_DEF);
  grp->sg_pool = pool;
  grp->sg_state = SVCPOOL_ACTIVE;
  TAILQ_INIT(&grp->sg_xlist);
  TAILQ_INIT(&grp->sg_active);
  LIST_INIT(&grp->sg_idlethreads);
  grp->sg_minthreads = 1;
  grp->sg_maxthreads = 1;
 }
 pool->sp_space_high = (u_long)nmbclusters * MCLBYTES / 4;
 pool->sp_space_low = (pool->sp_space_high / 3) * 2;

 sysctl_ctx_init(&pool->sp_sysctl);
 if (sysctl_base) {
  SYSCTL_ADD_PROC(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "minthreads", CTLTYPE_INT | CTLFLAG_RW,
      pool, 0, svcpool_minthread_sysctl, "I",
      "Minimal number of threads");
  SYSCTL_ADD_PROC(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "maxthreads", CTLTYPE_INT | CTLFLAG_RW,
      pool, 0, svcpool_maxthread_sysctl, "I",
      "Maximal number of threads");
  SYSCTL_ADD_PROC(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "threads", CTLTYPE_INT | CTLFLAG_RD,
      pool, 0, svcpool_threads_sysctl, "I",
      "Current number of threads");
  SYSCTL_ADD_INT(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "groups", CTLFLAG_RD, &pool->sp_groupcount, 0,
      "Number of thread groups");

  SYSCTL_ADD_ULONG(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_used", CTLFLAG_RD,
      &pool->sp_space_used,
      "Space in parsed but not handled requests.");

  SYSCTL_ADD_ULONG(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_used_highest", CTLFLAG_RD,
      &pool->sp_space_used_highest,
      "Highest space used since reboot.");

  SYSCTL_ADD_ULONG(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_high", CTLFLAG_RW,
      &pool->sp_space_high,
      "Maximum space in parsed but not handled requests.");

  SYSCTL_ADD_ULONG(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_low", CTLFLAG_RW,
      &pool->sp_space_low,
      "Low water mark for request space.");

  SYSCTL_ADD_INT(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_throttled", CTLFLAG_RD,
      &pool->sp_space_throttled, 0,
      "Whether nfs requests are currently throttled");

  SYSCTL_ADD_INT(&pool->sp_sysctl, sysctl_base, OID_AUTO,
      "request_space_throttle_count", CTLFLAG_RD,
      &pool->sp_space_throttle_count, 0,
      "Count of times throttling based on request space has occurred");
 }

 return pool;
}
