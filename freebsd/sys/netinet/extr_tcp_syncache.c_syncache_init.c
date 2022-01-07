
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct syncache_head {int dummy; } ;
struct syncache {int dummy; } ;
struct TYPE_5__ {int reseed; int * key; } ;
struct TYPE_7__ {int hashsize; int bucket_limit; int hashmask; int cache_limit; int paused; scalar_t__ pause_backoff; scalar_t__ pause_until; int pause_mtx; int pause_co; TYPE_1__ secret; int zone; TYPE_2__* hashbase; int vnet; int hash_secret; int rexmt_limit; } ;
struct TYPE_6__ {int sch_last_overflow; TYPE_3__* sch_sc; scalar_t__ sch_length; int sch_mtx; int sch_timer; int sch_bucket; } ;


 int MTX_DEF ;
 int M_SYNCACHE ;
 int M_WAITOK ;
 int M_ZERO ;
 int SYNCACHE_MAXREXMTS ;
 int SYNCOOKIE_LIFETIME ;
 int SYNCOOKIE_SECRET_SIZE ;
 int TAILQ_INIT (int *) ;
 int TCP_SYNCACHE_BUCKETLIMIT ;
 void* TCP_SYNCACHE_HASHSIZE ;
 scalar_t__ TCP_SYNCACHE_PAUSE_TIME ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UMA_ALIGN_PTR ;
 TYPE_3__ V_tcp_syncache ;
 int arc4rand (int ,int ,int ) ;
 int arc4random () ;
 int callout_init (int *,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,TYPE_3__*) ;
 int curvnet ;
 int hz ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int powerof2 (int) ;
 int printf (char*) ;
 int syncookie_reseed ;
 scalar_t__ time_uptime ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int) ;

void
syncache_init(void)
{
 int i;

 V_tcp_syncache.hashsize = TCP_SYNCACHE_HASHSIZE;
 V_tcp_syncache.bucket_limit = TCP_SYNCACHE_BUCKETLIMIT;
 V_tcp_syncache.rexmt_limit = SYNCACHE_MAXREXMTS;
 V_tcp_syncache.hash_secret = arc4random();

 TUNABLE_INT_FETCH("net.inet.tcp.syncache.hashsize",
     &V_tcp_syncache.hashsize);
 TUNABLE_INT_FETCH("net.inet.tcp.syncache.bucketlimit",
     &V_tcp_syncache.bucket_limit);
 if (!powerof2(V_tcp_syncache.hashsize) ||
     V_tcp_syncache.hashsize == 0) {
  printf("WARNING: syncache hash size is not a power of 2.\n");
  V_tcp_syncache.hashsize = TCP_SYNCACHE_HASHSIZE;
 }
 V_tcp_syncache.hashmask = V_tcp_syncache.hashsize - 1;


 V_tcp_syncache.cache_limit =
     V_tcp_syncache.hashsize * V_tcp_syncache.bucket_limit;
 TUNABLE_INT_FETCH("net.inet.tcp.syncache.cachelimit",
     &V_tcp_syncache.cache_limit);


 V_tcp_syncache.hashbase = malloc(V_tcp_syncache.hashsize *
     sizeof(struct syncache_head), M_SYNCACHE, M_WAITOK | M_ZERO);






 for (i = 0; i < V_tcp_syncache.hashsize; i++) {
  TAILQ_INIT(&V_tcp_syncache.hashbase[i].sch_bucket);
  mtx_init(&V_tcp_syncache.hashbase[i].sch_mtx, "tcp_sc_head",
    ((void*)0), MTX_DEF);
  callout_init_mtx(&V_tcp_syncache.hashbase[i].sch_timer,
    &V_tcp_syncache.hashbase[i].sch_mtx, 0);
  V_tcp_syncache.hashbase[i].sch_length = 0;
  V_tcp_syncache.hashbase[i].sch_sc = &V_tcp_syncache;
  V_tcp_syncache.hashbase[i].sch_last_overflow =
      -(SYNCOOKIE_LIFETIME + 1);
 }


 V_tcp_syncache.zone = uma_zcreate("syncache", sizeof(struct syncache),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 V_tcp_syncache.cache_limit = uma_zone_set_max(V_tcp_syncache.zone,
     V_tcp_syncache.cache_limit);


 callout_init(&V_tcp_syncache.secret.reseed, 1);
 arc4rand(V_tcp_syncache.secret.key[0], SYNCOOKIE_SECRET_SIZE, 0);
 arc4rand(V_tcp_syncache.secret.key[1], SYNCOOKIE_SECRET_SIZE, 0);
 callout_reset(&V_tcp_syncache.secret.reseed, SYNCOOKIE_LIFETIME * hz,
     syncookie_reseed, &V_tcp_syncache);


 mtx_init(&V_tcp_syncache.pause_mtx, "tcp_sc_pause", ((void*)0), MTX_DEF);
 callout_init_mtx(&V_tcp_syncache.pause_co, &V_tcp_syncache.pause_mtx,
     0);
 V_tcp_syncache.pause_until = time_uptime - TCP_SYNCACHE_PAUSE_TIME;
 V_tcp_syncache.pause_backoff = 0;
 V_tcp_syncache.paused = 0;
}
