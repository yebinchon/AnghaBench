
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef void* uint16_t ;
struct ipfw_flow_id {int dummy; } ;
struct dyn_data {scalar_t__ expire; void* hashval; void* fibnum; void* rulenum; void* ruleid; void* parent; } ;


 int LOG_DEBUG ;
 int MATCH_FORWARD ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_dyn_data_zone ;
 scalar_t__ V_dyn_syn_lifetime ;
 int dyn_update_proto_state (struct dyn_data*,struct ipfw_flow_id const*,void const*,int,int ) ;
 scalar_t__ last_log ;
 int log (int ,char*) ;
 scalar_t__ time_uptime ;
 struct dyn_data* uma_zalloc (int ,int) ;

__attribute__((used)) static struct dyn_data *
dyn_alloc_dyndata(void *parent, uint32_t ruleid, uint16_t rulenum,
    const struct ipfw_flow_id *pkt, const void *ulp, int pktlen,
    uint32_t hashval, uint16_t fibnum)
{
 struct dyn_data *data;

 data = uma_zalloc(V_dyn_data_zone, M_NOWAIT | M_ZERO);
 if (data == ((void*)0)) {
  if (last_log != time_uptime) {
   last_log = time_uptime;
   log(LOG_DEBUG,
       "ipfw: Cannot allocate dynamic state, "
       "consider increasing net.inet.ip.fw.dyn_max\n");
  }
  return (((void*)0));
 }

 data->parent = parent;
 data->ruleid = ruleid;
 data->rulenum = rulenum;
 data->fibnum = fibnum;
 data->hashval = hashval;
 data->expire = time_uptime + V_dyn_syn_lifetime;
 dyn_update_proto_state(data, pkt, ulp, pktlen, MATCH_FORWARD);
 return (data);
}
