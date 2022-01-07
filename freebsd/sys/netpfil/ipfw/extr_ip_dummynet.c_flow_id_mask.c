
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_flow_id {int src_ip; int dst_ip; int flow_id6; int src_ip6; int dst_ip6; int extra; int proto; int src_port; int dst_port; } ;


 int APPLY_MASK (int *,int *) ;
 int IS_IP6_FLOW_ID (struct ipfw_flow_id*) ;

__attribute__((used)) static struct ipfw_flow_id *
flow_id_mask(struct ipfw_flow_id *mask, struct ipfw_flow_id *id)
{
 int is_v6 = IS_IP6_FLOW_ID(id);

 id->dst_port &= mask->dst_port;
 id->src_port &= mask->src_port;
 id->proto &= mask->proto;
 id->extra &= mask->extra;
 if (is_v6) {
  APPLY_MASK(&id->dst_ip6, &mask->dst_ip6);
  APPLY_MASK(&id->src_ip6, &mask->src_ip6);
  id->flow_id6 &= mask->flow_id6;
 } else {
  id->dst_ip &= mask->dst_ip;
  id->src_ip &= mask->src_ip;
 }
 return id;
}
