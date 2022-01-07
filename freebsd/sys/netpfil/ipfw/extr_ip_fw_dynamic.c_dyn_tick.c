
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnet {int dummy; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (struct vnet*) ;
 int IPFW_UH_WLOCK (int *) ;
 int IPFW_UH_WUNLOCK (int *) ;
 int V_curr_dyn_buckets ;
 int V_curr_max_length ;
 int V_dyn_buckets_max ;
 int V_dyn_count ;
 scalar_t__ V_dyn_keepalive ;
 scalar_t__ V_dyn_keepalive_last ;
 scalar_t__ V_dyn_keepalive_period ;
 int V_dyn_timeout ;
 int V_layer3_chain ;
 int callout_reset_on (int *,int ,void (*) (void*),void*,int ) ;
 int dyn_expire_states (int *,int *) ;
 int dyn_free_states (int *) ;
 int dyn_grow_hashtable (int *,int) ;
 int dyn_send_keepalive_ipv4 (int *) ;
 int dyn_send_keepalive_ipv6 (int *) ;
 int fls (int) ;
 int hz ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
dyn_tick(void *vnetx)
{
 uint32_t buckets;

 CURVNET_SET((struct vnet *)vnetx);



 dyn_free_states(&V_layer3_chain);






 IPFW_UH_WLOCK(&V_layer3_chain);
 dyn_expire_states(&V_layer3_chain, ((void*)0));
 IPFW_UH_WUNLOCK(&V_layer3_chain);



 if (V_dyn_keepalive != 0 &&
     V_dyn_keepalive_last + V_dyn_keepalive_period <= time_uptime) {
  V_dyn_keepalive_last = time_uptime;
  dyn_send_keepalive_ipv4(&V_layer3_chain);



 }







 if (V_curr_dyn_buckets < V_dyn_buckets_max &&
     (V_curr_dyn_buckets < V_dyn_count / 2 || (
     V_curr_dyn_buckets < V_dyn_count && V_curr_max_length > 8))) {
  buckets = 1 << fls(V_dyn_count);
  if (buckets > V_dyn_buckets_max)
   buckets = V_dyn_buckets_max;
  dyn_grow_hashtable(&V_layer3_chain, buckets);
 }

 callout_reset_on(&V_dyn_timeout, hz, dyn_tick, vnetx, 0);
 CURVNET_RESTORE();
}
