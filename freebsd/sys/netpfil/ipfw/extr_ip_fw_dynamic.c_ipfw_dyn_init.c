
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;
struct dyn_parent {int dummy; } ;
struct dyn_ipv6_state {int dummy; } ;
struct dyn_ipv4_state {int dummy; } ;
struct dyn_data {int dummy; } ;


 int DYN_EXPIRED_LOCK_INIT () ;
 int IPFW_ADD_OBJ_REWRITER (scalar_t__,int ) ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 scalar_t__ V_curr_dyn_buckets ;
 int V_dyn_ack_lifetime ;
 int * V_dyn_bucket_lock ;
 int V_dyn_buckets_max ;
 void* V_dyn_data_zone ;
 int V_dyn_expired_ipv4 ;
 int V_dyn_expired_ipv6 ;
 int V_dyn_fin_lifetime ;
 int V_dyn_hashseed ;
 int * V_dyn_ipv4 ;
 int * V_dyn_ipv4_parent ;
 void* V_dyn_ipv4_zone ;
 int * V_dyn_ipv6 ;
 int * V_dyn_ipv6_parent ;
 void* V_dyn_ipv6_zone ;
 int V_dyn_keepalive ;
 int V_dyn_keepalive_interval ;
 int V_dyn_keepalive_last ;
 int V_dyn_keepalive_period ;
 int V_dyn_max ;
 int V_dyn_parent_max ;
 void* V_dyn_parent_zone ;
 int V_dyn_rst_lifetime ;
 int V_dyn_short_lifetime ;
 int V_dyn_syn_lifetime ;
 int V_dyn_timeout ;
 int V_dyn_udp_lifetime ;
 int arc4random () ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int ,int ,int ) ;
 int curvnet ;
 int dyn_grow_hashtable (struct ip_fw_chain*,int) ;
 int dyn_hp_cache ;
 int dyn_opcodes ;
 int dyn_tick ;
 int hz ;
 int malloc (int,int ,int) ;
 int mp_ncpus ;
 int time_uptime ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (void*,int) ;

void
ipfw_dyn_init(struct ip_fw_chain *chain)
{




 V_dyn_max = 16384;
 V_dyn_parent_max = 4096;
 V_dyn_buckets_max = 8192;

 V_dyn_ack_lifetime = 300;
 V_dyn_syn_lifetime = 20;
 V_dyn_fin_lifetime = 1;
 V_dyn_rst_lifetime = 1;
 V_dyn_udp_lifetime = 10;
 V_dyn_short_lifetime = 5;

 V_dyn_keepalive_interval = 20;
 V_dyn_keepalive_period = 5;
 V_dyn_keepalive = 1;
 V_dyn_keepalive_last = time_uptime;

 V_dyn_data_zone = uma_zcreate("IPFW dynamic states data",
     sizeof(struct dyn_data), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 uma_zone_set_max(V_dyn_data_zone, V_dyn_max);

 V_dyn_parent_zone = uma_zcreate("IPFW parent dynamic states",
     sizeof(struct dyn_parent), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 uma_zone_set_max(V_dyn_parent_zone, V_dyn_parent_max);

 SLIST_INIT(&V_dyn_expired_ipv4);
 V_dyn_ipv4 = ((void*)0);
 V_dyn_ipv4_parent = ((void*)0);
 V_dyn_ipv4_zone = uma_zcreate("IPFW IPv4 dynamic states",
     sizeof(struct dyn_ipv4_state), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 V_curr_dyn_buckets = 0;
 V_dyn_bucket_lock = ((void*)0);
 dyn_grow_hashtable(chain, 256);

 if (IS_DEFAULT_VNET(curvnet))
  dyn_hp_cache = malloc(mp_ncpus * sizeof(void *), M_IPFW,
      M_WAITOK | M_ZERO);

 DYN_EXPIRED_LOCK_INIT();
 callout_init(&V_dyn_timeout, 1);
 callout_reset(&V_dyn_timeout, hz, dyn_tick, curvnet);
 IPFW_ADD_OBJ_REWRITER(IS_DEFAULT_VNET(curvnet), dyn_opcodes);
}
