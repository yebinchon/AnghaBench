
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct flow_hash_entry {int head; int mtx; } ;
struct flow_entry {int dummy; } ;
struct flow6_entry {int dummy; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_4__ {void* nfinfo_inact_exp; void* nfinfo_act_exp; void* nfinfo_spackets6; void* nfinfo_sbytes6; void* nfinfo_spackets; void* nfinfo_sbytes; void* nfinfo_packets6; void* nfinfo_bytes6; void* nfinfo_packets; void* nfinfo_bytes; struct flow_hash_entry* hash6; struct flow_hash_entry* hash; void* zone6; void* zone; } ;


 int CACHESIZE ;
 int CTR0 (int ,char*) ;
 int KTR_NET ;
 int MTX_DEF ;
 int M_NETFLOW_HASH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NBUCKETS ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_CACHE ;
 void* counter_u64_alloc (int) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ng_netflow_v9_cache_init (TYPE_1__*) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (void*,int ) ;

void
ng_netflow_cache_init(priv_p priv)
{
 struct flow_hash_entry *hsh;
 int i;


 priv->zone = uma_zcreate("NetFlow IPv4 cache",
     sizeof(struct flow_entry), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_CACHE, 0);
 uma_zone_set_max(priv->zone, CACHESIZE);
 priv->hash = malloc(NBUCKETS * sizeof(struct flow_hash_entry),
     M_NETFLOW_HASH, M_WAITOK | M_ZERO);


 for (i = 0, hsh = priv->hash; i < NBUCKETS; i++, hsh++) {
  mtx_init(&hsh->mtx, "hash mutex", ((void*)0), MTX_DEF);
  TAILQ_INIT(&hsh->head);
 }
 priv->nfinfo_bytes = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_packets = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_bytes6 = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_packets6 = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_sbytes = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_spackets = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_sbytes6 = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_spackets6 = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_act_exp = counter_u64_alloc(M_WAITOK);
 priv->nfinfo_inact_exp = counter_u64_alloc(M_WAITOK);

 ng_netflow_v9_cache_init(priv);
 CTR0(KTR_NET, "ng_netflow startup()");
}
