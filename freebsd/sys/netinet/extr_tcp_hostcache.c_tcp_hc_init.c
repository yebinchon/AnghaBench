
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct hc_metrics {int dummy; } ;
struct hc_head {int hch_mtx; scalar_t__ hch_length; int hch_bucket; } ;
struct TYPE_2__ {int hashsize; int bucket_limit; int prune; int hashmask; int cache_limit; int zone; struct hc_head* hashbase; int expire; scalar_t__ cache_count; } ;


 int MTX_DEF ;
 int M_HOSTCACHE ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TCP_HOSTCACHE_BUCKETLIMIT ;
 int TCP_HOSTCACHE_EXPIRE ;
 void* TCP_HOSTCACHE_HASHSIZE ;
 int TCP_HOSTCACHE_PRUNE ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UMA_ALIGN_PTR ;
 int V_tcp_hc_callout ;
 TYPE_1__ V_tcp_hostcache ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int ) ;
 int curvnet ;
 int hz ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int powerof2 (int) ;
 int printf (char*) ;
 int tcp_hc_purge ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,void*) ;

void
tcp_hc_init(void)
{
 u_int cache_limit;
 int i;




 V_tcp_hostcache.cache_count = 0;
 V_tcp_hostcache.hashsize = TCP_HOSTCACHE_HASHSIZE;
 V_tcp_hostcache.bucket_limit = TCP_HOSTCACHE_BUCKETLIMIT;
 V_tcp_hostcache.expire = TCP_HOSTCACHE_EXPIRE;
 V_tcp_hostcache.prune = TCP_HOSTCACHE_PRUNE;

 TUNABLE_INT_FETCH("net.inet.tcp.hostcache.hashsize",
     &V_tcp_hostcache.hashsize);
 if (!powerof2(V_tcp_hostcache.hashsize)) {
  printf("WARNING: hostcache hash size is not a power of 2.\n");
  V_tcp_hostcache.hashsize = TCP_HOSTCACHE_HASHSIZE;
 }
 V_tcp_hostcache.hashmask = V_tcp_hostcache.hashsize - 1;

 TUNABLE_INT_FETCH("net.inet.tcp.hostcache.bucketlimit",
     &V_tcp_hostcache.bucket_limit);

 cache_limit = V_tcp_hostcache.hashsize * V_tcp_hostcache.bucket_limit;
 V_tcp_hostcache.cache_limit = cache_limit;
 TUNABLE_INT_FETCH("net.inet.tcp.hostcache.cachelimit",
     &V_tcp_hostcache.cache_limit);
 if (V_tcp_hostcache.cache_limit > cache_limit)
  V_tcp_hostcache.cache_limit = cache_limit;




 V_tcp_hostcache.hashbase = (struct hc_head *)
     malloc(V_tcp_hostcache.hashsize * sizeof(struct hc_head),
     M_HOSTCACHE, M_WAITOK | M_ZERO);




 for (i = 0; i < V_tcp_hostcache.hashsize; i++) {
  TAILQ_INIT(&V_tcp_hostcache.hashbase[i].hch_bucket);
  V_tcp_hostcache.hashbase[i].hch_length = 0;
  mtx_init(&V_tcp_hostcache.hashbase[i].hch_mtx, "tcp_hc_entry",
     ((void*)0), MTX_DEF);
 }




 V_tcp_hostcache.zone =
     uma_zcreate("hostcache", sizeof(struct hc_metrics),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 uma_zone_set_max(V_tcp_hostcache.zone, V_tcp_hostcache.cache_limit);




 callout_init(&V_tcp_hc_callout, 1);
 callout_reset(&V_tcp_hc_callout, V_tcp_hostcache.prune * hz,
     tcp_hc_purge, curvnet);
}
