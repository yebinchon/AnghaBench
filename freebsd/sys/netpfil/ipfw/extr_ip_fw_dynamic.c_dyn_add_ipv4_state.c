
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct ipfw_dyn_info {scalar_t__ direction; scalar_t__ hashval; scalar_t__ version; int kidx; } ;
struct dyn_ipv4_state {void* data; } ;


 int CK_SLIST_INSERT_HEAD (int *,struct dyn_ipv4_state*,int ) ;
 scalar_t__ DYN_BUCKET (scalar_t__,int ) ;
 int DYN_BUCKET_LOCK (scalar_t__) ;
 int DYN_BUCKET_UNLOCK (scalar_t__) ;
 scalar_t__ DYN_BUCKET_VERSION (scalar_t__,int ) ;
 int DYN_BUCKET_VERSION_BUMP (scalar_t__,int ) ;
 int DYN_COUNT_INC (int ) ;
 int EEXIST ;
 int ENOMEM ;
 scalar_t__ MATCH_UNKNOWN ;
 int V_curr_dyn_buckets ;
 int V_dyn_data_zone ;
 int * V_dyn_ipv4 ;
 void* dyn_alloc_dyndata (void*,scalar_t__,int ,struct ipfw_flow_id const*,void const*,int,scalar_t__,int ) ;
 struct dyn_ipv4_state* dyn_alloc_ipv4_state (struct ipfw_flow_id const*,int ,int ) ;
 int dyn_count ;
 scalar_t__ dyn_lookup_ipv4_state_locked (struct ipfw_flow_id const*,void const*,int,scalar_t__,int ) ;
 int entry ;
 int ipv4_add ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static int
dyn_add_ipv4_state(void *parent, uint32_t ruleid, uint16_t rulenum,
    const struct ipfw_flow_id *pkt, const void *ulp, int pktlen,
    uint32_t hashval, struct ipfw_dyn_info *info, uint16_t fibnum,
    uint16_t kidx, uint8_t type)
{
 struct dyn_ipv4_state *s;
 void *data;
 uint32_t bucket;

 bucket = DYN_BUCKET(hashval, V_curr_dyn_buckets);
 DYN_BUCKET_LOCK(bucket);
 if (info->direction == MATCH_UNKNOWN ||
     info->kidx != kidx ||
     info->hashval != hashval ||
     info->version != DYN_BUCKET_VERSION(bucket, ipv4_add)) {




  if (dyn_lookup_ipv4_state_locked(pkt, ulp, pktlen,
      bucket, kidx) != 0) {
   DYN_BUCKET_UNLOCK(bucket);
   return (EEXIST);
  }
 }

 data = dyn_alloc_dyndata(parent, ruleid, rulenum, pkt, ulp,
     pktlen, hashval, fibnum);
 if (data == ((void*)0)) {
  DYN_BUCKET_UNLOCK(bucket);
  return (ENOMEM);
 }

 s = dyn_alloc_ipv4_state(pkt, kidx, type);
 if (s == ((void*)0)) {
  DYN_BUCKET_UNLOCK(bucket);
  uma_zfree(V_dyn_data_zone, data);
  return (ENOMEM);
 }

 s->data = data;
 CK_SLIST_INSERT_HEAD(&V_dyn_ipv4[bucket], s, entry);
 DYN_COUNT_INC(dyn_count);
 DYN_BUCKET_VERSION_BUMP(bucket, ipv4_add);
 DYN_BUCKET_UNLOCK(bucket);
 return (0);
}
