
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int addr; } ;
struct ng_bridge_hent {TYPE_1__ host; } ;
struct ng_bridge_bucket {int dummy; } ;
typedef TYPE_3__* priv_p ;
struct TYPE_6__ {int debugLevel; } ;
struct TYPE_7__ {int numHosts; int numBuckets; int hashMask; struct ng_bridge_bucket* tab; int node; TYPE_2__ conf; } ;


 int HASH (int ,int) ;
 int LOG_INFO ;
 int MAX_BUCKETS ;
 int MIN_BUCKETS ;
 int M_NETGRAPH_BRIDGE ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_EMPTY (struct ng_bridge_bucket* const) ;
 struct ng_bridge_hent* SLIST_FIRST (struct ng_bridge_bucket* const) ;
 int SLIST_INSERT_HEAD (struct ng_bridge_bucket*,struct ng_bridge_hent* const,int ) ;
 int SLIST_REMOVE_HEAD (struct ng_bridge_bucket* const,int ) ;
 int free (struct ng_bridge_bucket*,int ) ;
 int log (int ,char*,int ,int,int) ;
 struct ng_bridge_bucket* malloc (int,int ,int) ;
 int next ;
 int ng_bridge_nodename (int ) ;

__attribute__((used)) static void
ng_bridge_rehash(priv_p priv)
{
 struct ng_bridge_bucket *newTab;
 int oldBucket, newBucket;
 int newNumBuckets;
 u_int newMask;


 if (priv->numHosts > priv->numBuckets
     && (priv->numBuckets << 1) <= MAX_BUCKETS)
  newNumBuckets = priv->numBuckets << 1;
 else if (priv->numHosts < (priv->numBuckets >> 2)
     && (priv->numBuckets >> 2) >= MIN_BUCKETS)
  newNumBuckets = priv->numBuckets >> 2;
 else
  return;
 newMask = newNumBuckets - 1;


 newTab = malloc(newNumBuckets * sizeof(*newTab),
     M_NETGRAPH_BRIDGE, M_NOWAIT | M_ZERO);
 if (newTab == ((void*)0))
  return;


 for (oldBucket = 0; oldBucket < priv->numBuckets; oldBucket++) {
  struct ng_bridge_bucket *const oldList = &priv->tab[oldBucket];

  while (!SLIST_EMPTY(oldList)) {
   struct ng_bridge_hent *const hent
       = SLIST_FIRST(oldList);

   SLIST_REMOVE_HEAD(oldList, next);
   newBucket = HASH(hent->host.addr, newMask);
   SLIST_INSERT_HEAD(&newTab[newBucket], hent, next);
  }
 }


 if (priv->conf.debugLevel >= 3) {
  log(LOG_INFO, "ng_bridge: %s: table size %d -> %d\n",
      ng_bridge_nodename(priv->node),
      priv->numBuckets, newNumBuckets);
 }
 free(priv->tab, M_NETGRAPH_BRIDGE);
 priv->numBuckets = newNumBuckets;
 priv->hashMask = newMask;
 priv->tab = newTab;
 return;
}
