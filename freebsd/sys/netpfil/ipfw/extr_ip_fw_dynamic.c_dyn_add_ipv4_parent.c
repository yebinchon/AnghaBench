
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct dyn_parent {int dummy; } ;
struct dyn_ipv4_state {struct dyn_parent* limit; } ;


 int CK_SLIST_INSERT_HEAD (int *,struct dyn_ipv4_state*,int ) ;
 int DYNSTATE_CRITICAL_ENTER () ;
 int DYNSTATE_PROTECT (struct dyn_ipv4_state*) ;
 scalar_t__ DYN_BUCKET (scalar_t__,int ) ;
 int DYN_BUCKET_LOCK (scalar_t__) ;
 int DYN_BUCKET_UNLOCK (scalar_t__) ;
 scalar_t__ DYN_BUCKET_VERSION (scalar_t__,int ) ;
 int DYN_BUCKET_VERSION_BUMP (scalar_t__,int ) ;
 int DYN_COUNT_INC (int ) ;
 int O_LIMIT_PARENT ;
 int V_curr_dyn_buckets ;
 int * V_dyn_ipv4_parent ;
 int V_dyn_parent_zone ;
 struct dyn_ipv4_state* dyn_alloc_ipv4_state (struct ipfw_flow_id const*,int ,int ) ;
 struct dyn_parent* dyn_alloc_parent (void*,scalar_t__,int ,scalar_t__) ;
 struct dyn_ipv4_state* dyn_lookup_ipv4_parent_locked (struct ipfw_flow_id const*,void*,scalar_t__,int ,scalar_t__) ;
 int dyn_parent_count ;
 int entry ;
 int ipv4_parent_add ;
 int uma_zfree (int ,struct dyn_parent*) ;

__attribute__((used)) static struct dyn_ipv4_state *
dyn_add_ipv4_parent(void *rule, uint32_t ruleid, uint16_t rulenum,
    const struct ipfw_flow_id *pkt, uint32_t hashval, uint32_t version,
    uint16_t kidx)
{
 struct dyn_ipv4_state *s;
 struct dyn_parent *limit;
 uint32_t bucket;

 bucket = DYN_BUCKET(hashval, V_curr_dyn_buckets);
 DYN_BUCKET_LOCK(bucket);
 if (version != DYN_BUCKET_VERSION(bucket, ipv4_parent_add)) {




  s = dyn_lookup_ipv4_parent_locked(pkt, rule, ruleid,
      rulenum, bucket);
  if (s != ((void*)0)) {




   DYNSTATE_CRITICAL_ENTER();
   DYNSTATE_PROTECT(s);
   DYN_BUCKET_UNLOCK(bucket);
   return (s);
  }
 }

 limit = dyn_alloc_parent(rule, ruleid, rulenum, hashval);
 if (limit == ((void*)0)) {
  DYN_BUCKET_UNLOCK(bucket);
  return (((void*)0));
 }

 s = dyn_alloc_ipv4_state(pkt, kidx, O_LIMIT_PARENT);
 if (s == ((void*)0)) {
  DYN_BUCKET_UNLOCK(bucket);
  uma_zfree(V_dyn_parent_zone, limit);
  return (((void*)0));
 }

 s->limit = limit;
 CK_SLIST_INSERT_HEAD(&V_dyn_ipv4_parent[bucket], s, entry);
 DYN_COUNT_INC(dyn_parent_count);
 DYN_BUCKET_VERSION_BUMP(bucket, ipv4_parent_add);
 DYNSTATE_CRITICAL_ENTER();
 DYNSTATE_PROTECT(s);
 DYN_BUCKET_UNLOCK(bucket);
 return (s);
}
