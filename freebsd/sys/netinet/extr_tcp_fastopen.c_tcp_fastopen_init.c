
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_fastopen_ccache_entry {int dummy; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct TYPE_8__ {int v; int c; } ;
struct TYPE_7__ {scalar_t__ bucket_limit; int buckets; int mask; void* zone; TYPE_1__* base; int secret; } ;
struct TYPE_6__ {scalar_t__ newest_psk; scalar_t__ newest; } ;
struct TYPE_5__ {int ccb_num_entries; TYPE_3__* ccb_ccache; int ccb_mtx; int ccb_entries; } ;


 int MTX_DEF ;
 int M_TCP_FASTOPEN_CCACHE ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT ;
 scalar_t__ TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT ;
 scalar_t__ TCP_FASTOPEN_MAX_KEYS ;
 scalar_t__ TCP_FASTOPEN_MAX_PSKS ;
 int UMA_ALIGN_CACHE ;
 int UMA_ALIGN_PTR ;
 void* V_counter_zone ;
 TYPE_4__ V_tcp_fastopen_autokey_ctx ;
 TYPE_3__ V_tcp_fastopen_ccache ;
 scalar_t__ V_tcp_fastopen_ccache_buckets ;
 scalar_t__ V_tcp_fastopen_client_enable ;
 int V_tcp_fastopen_keylock ;
 TYPE_2__ V_tcp_fastopen_keys ;
 int arc4random () ;
 int callout_init_rm (int *,int *,int ) ;
 int curvnet ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int powerof2 (scalar_t__) ;
 int rm_init (int *,char*) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
tcp_fastopen_init(void)
{
 unsigned int i;

 V_counter_zone = uma_zcreate("tfo", sizeof(unsigned int),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 rm_init(&V_tcp_fastopen_keylock, "tfo_keylock");
 callout_init_rm(&V_tcp_fastopen_autokey_ctx.c,
     &V_tcp_fastopen_keylock, 0);
 V_tcp_fastopen_autokey_ctx.v = curvnet;
 V_tcp_fastopen_keys.newest = TCP_FASTOPEN_MAX_KEYS - 1;
 V_tcp_fastopen_keys.newest_psk = TCP_FASTOPEN_MAX_PSKS - 1;


 if (V_tcp_fastopen_ccache.bucket_limit == 0)
  V_tcp_fastopen_ccache.bucket_limit =
      TCP_FASTOPEN_CCACHE_BUCKET_LIMIT_DEFAULT;


 if ((V_tcp_fastopen_ccache_buckets == 0) ||
     !powerof2(V_tcp_fastopen_ccache_buckets))
  V_tcp_fastopen_ccache.buckets =
   TCP_FASTOPEN_CCACHE_BUCKETS_DEFAULT;
 else
  V_tcp_fastopen_ccache.buckets = V_tcp_fastopen_ccache_buckets;

 V_tcp_fastopen_ccache.mask = V_tcp_fastopen_ccache.buckets - 1;
 V_tcp_fastopen_ccache.secret = arc4random();

 V_tcp_fastopen_ccache.base = malloc(V_tcp_fastopen_ccache.buckets *
     sizeof(struct tcp_fastopen_ccache_bucket), M_TCP_FASTOPEN_CCACHE,
     M_WAITOK | M_ZERO);

 for (i = 0; i < V_tcp_fastopen_ccache.buckets; i++) {
  TAILQ_INIT(&V_tcp_fastopen_ccache.base[i].ccb_entries);
  mtx_init(&V_tcp_fastopen_ccache.base[i].ccb_mtx, "tfo_ccache_bucket",
    ((void*)0), MTX_DEF);
  if (V_tcp_fastopen_client_enable) {

   V_tcp_fastopen_ccache.base[i].ccb_num_entries = 0;
  } else {

   V_tcp_fastopen_ccache.base[i].ccb_num_entries = -1;
  }
  V_tcp_fastopen_ccache.base[i].ccb_ccache = &V_tcp_fastopen_ccache;
 }
 V_tcp_fastopen_ccache.zone = uma_zcreate("tfo_ccache_entries",
     sizeof(struct tcp_fastopen_ccache_entry), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_CACHE, 0);
}
