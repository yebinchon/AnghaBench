
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ipfw_flow_id {int proto; } ;
struct dyn_data {scalar_t__ expire; } ;


 int DYN_COUNTER_INC (struct dyn_data*,int ,int) ;



 int MATCH_FORWARD ;
 scalar_t__ V_dyn_short_lifetime ;
 scalar_t__ V_dyn_udp_lifetime ;
 int ck_pr_store_32 (scalar_t__*,scalar_t__) ;
 scalar_t__ dyn_update_tcp_state (struct dyn_data*,struct ipfw_flow_id const*,void const*,int) ;
 int fwd ;
 int rev ;
 scalar_t__ time_uptime ;

__attribute__((used)) static void
dyn_update_proto_state(struct dyn_data *data, const struct ipfw_flow_id *pkt,
    const void *ulp, int pktlen, int dir)
{
 uint32_t expire;


 switch (pkt->proto) {
 case 129:
 case 128:
  expire = time_uptime + V_dyn_udp_lifetime;
  break;
 case 130:
  expire = dyn_update_tcp_state(data, pkt, ulp, dir);
  break;
 default:
  expire = time_uptime + V_dyn_short_lifetime;
 }




 if (data->expire != expire)
  ck_pr_store_32(&data->expire, expire);

 if (dir == MATCH_FORWARD)
  DYN_COUNTER_INC(data, fwd, pktlen);
 else
  DYN_COUNTER_INC(data, rev, pktlen);
}
