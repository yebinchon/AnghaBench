
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipq {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; int lock; int head; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IPREASS_NHASH ;
 int IP_MAXFRAGPACKETS ;
 int IP_MAXFRAGS ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 TYPE_1__* V_ipq ;
 int V_ipq_hashseed ;
 int V_ipq_zone ;
 int V_ipreass_maxbucketsize ;
 int V_maxfragsperpacket ;
 int arc4random () ;
 int curvnet ;
 int imax (int,int) ;
 int ipreass_zone_change ;
 int maxfrags ;
 int mtx_init (int *,char*,int *,int) ;
 int nmbclusters_change ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int) ;

void
ipreass_init(void)
{
 int max;

 for (int i = 0; i < IPREASS_NHASH; i++) {
  TAILQ_INIT(&V_ipq[i].head);
  mtx_init(&V_ipq[i].lock, "IP reassembly", ((void*)0),
      MTX_DEF | MTX_DUPOK);
  V_ipq[i].count = 0;
 }
 V_ipq_hashseed = arc4random();
 V_maxfragsperpacket = 16;
 V_ipq_zone = uma_zcreate("ipq", sizeof(struct ipq), ((void*)0), ((void*)0), ((void*)0),
     ((void*)0), UMA_ALIGN_PTR, 0);
 max = IP_MAXFRAGPACKETS;
 max = uma_zone_set_max(V_ipq_zone, max);
 V_ipreass_maxbucketsize = imax(max / (IPREASS_NHASH / 2), 1);

 if (IS_DEFAULT_VNET(curvnet)) {
  maxfrags = IP_MAXFRAGS;
  EVENTHANDLER_REGISTER(nmbclusters_change, ipreass_zone_change,
      ((void*)0), EVENTHANDLER_PRI_ANY);
 }
}
