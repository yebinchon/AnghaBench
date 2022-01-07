
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ count; int lock; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IP6QB_HEAD (size_t) ;
 size_t IP6REASS_NHASH ;
 int IP6_MAXFRAGPACKETS ;
 int IP6_MAXFRAGS ;
 int IS_DEFAULT_VNET (int ) ;
 int MTX_DEF ;
 int TAILQ_INIT (int ) ;
 int V_frag6_on ;
 int V_ip6_maxfragpackets ;
 int V_ip6_maxfragsperpacket ;
 TYPE_1__* V_ip6qb ;
 int V_ip6qb_hashseed ;
 int arc4random () ;
 int curvnet ;
 int frag6_change ;
 int frag6_set_bucketsize () ;
 int ip6_maxfrags ;
 int mtx_init (int *,char*,int *,int ) ;
 int nmbclusters_change ;

void
frag6_init(void)
{
 uint32_t bucket;

 V_ip6_maxfragpackets = IP6_MAXFRAGPACKETS;
 frag6_set_bucketsize();
 for (bucket = 0; bucket < IP6REASS_NHASH; bucket++) {
  TAILQ_INIT(IP6QB_HEAD(bucket));
  mtx_init(&V_ip6qb[bucket].lock, "ip6qb", ((void*)0), MTX_DEF);
  V_ip6qb[bucket].count = 0;
 }
 V_ip6qb_hashseed = arc4random();
 V_ip6_maxfragsperpacket = 64;



 if (!IS_DEFAULT_VNET(curvnet))
  return;

 ip6_maxfrags = IP6_MAXFRAGS;
 EVENTHANDLER_REGISTER(nmbclusters_change,
     frag6_change, ((void*)0), EVENTHANDLER_PRI_ANY);
}
