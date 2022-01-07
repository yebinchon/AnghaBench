
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct ip_fw {int rulenum; int id; } ;
struct dyn_parent {int dummy; } ;
struct dyn_ipv6_state {struct dyn_parent* limit; } ;
struct dyn_ipv4_state {struct dyn_parent* limit; } ;
typedef int sbuf ;


 scalar_t__ DPARENT_COUNT (struct dyn_parent*) ;
 int DPARENT_COUNT_INC (struct dyn_parent*) ;
 int DYNSTATE_CRITICAL_ENTER () ;
 int DYNSTATE_CRITICAL_EXIT () ;
 scalar_t__ DYN_BUCKET (scalar_t__,int ) ;
 scalar_t__ DYN_BUCKET_VERSION (scalar_t__,int ) ;
 scalar_t__ IS_IP4_FLOW_ID (struct ipfw_flow_id const*) ;
 scalar_t__ IS_IP6_FLOW_ID (struct ipfw_flow_id const*) ;
 int LOG_DEBUG ;
 int LOG_SECURITY ;
 int O_LIMIT ;
 int V_curr_dyn_buckets ;
 scalar_t__ V_fw_verbose ;
 struct dyn_ipv4_state* dyn_add_ipv4_parent (struct ip_fw*,int ,int,struct ipfw_flow_id const*,scalar_t__,scalar_t__,int ) ;
 struct dyn_ipv6_state* dyn_add_ipv6_parent (struct ip_fw*,int ,int,struct ipfw_flow_id const*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct dyn_ipv4_state* dyn_lookup_ipv4_parent (struct ipfw_flow_id const*,struct ip_fw*,int ,int,scalar_t__) ;
 struct dyn_ipv6_state* dyn_lookup_ipv6_parent (struct ipfw_flow_id const*,scalar_t__,struct ip_fw*,int ,int,scalar_t__) ;
 int ipv4_parent_add ;
 int ipv6_parent_add ;
 scalar_t__ last_log ;
 int print_dyn_rule_flags (struct ipfw_flow_id const*,int ,int,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void *
dyn_get_parent_state(const struct ipfw_flow_id *pkt, uint32_t zoneid,
    struct ip_fw *rule, uint32_t hashval, uint32_t limit, uint16_t kidx)
{
 char sbuf[24];
 struct dyn_parent *p;
 void *ret;
 uint32_t bucket, version;

 p = ((void*)0);
 ret = ((void*)0);
 bucket = DYN_BUCKET(hashval, V_curr_dyn_buckets);
 DYNSTATE_CRITICAL_ENTER();
 if (IS_IP4_FLOW_ID(pkt)) {
  struct dyn_ipv4_state *s;

  version = DYN_BUCKET_VERSION(bucket, ipv4_parent_add);
  s = dyn_lookup_ipv4_parent(pkt, rule, rule->id,
      rule->rulenum, bucket);
  if (s == ((void*)0)) {




   DYNSTATE_CRITICAL_EXIT();

   s = dyn_add_ipv4_parent(rule, rule->id,
       rule->rulenum, pkt, hashval, version, kidx);
   if (s == ((void*)0))
    return (((void*)0));

  }
  ret = s;
  p = s->limit;
 }
 else {
  DYNSTATE_CRITICAL_EXIT();
  return (((void*)0));
 }


 if (DPARENT_COUNT(p) >= limit) {
  DYNSTATE_CRITICAL_EXIT();
  if (V_fw_verbose && last_log != time_uptime) {
   last_log = time_uptime;
   snprintf(sbuf, sizeof(sbuf), "%u drop session",
       rule->rulenum);
   print_dyn_rule_flags(pkt, O_LIMIT,
       LOG_SECURITY | LOG_DEBUG, sbuf,
       "too many entries");
  }
  return (((void*)0));
 }


 DPARENT_COUNT_INC(p);







 DYNSTATE_CRITICAL_EXIT();
 return (ret);
}
