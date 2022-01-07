
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_flow_id {scalar_t__ dst_ip; scalar_t__ src_ip; scalar_t__ dst_port; scalar_t__ src_port; scalar_t__ proto; scalar_t__ extra; scalar_t__ flow_id6; int src_ip6; int dst_ip6; } ;


 int IS_IP6_FLOW_ID (struct ipfw_flow_id*) ;
 int bcmp (int *,int *,int) ;

__attribute__((used)) static int
flow_id_cmp(struct ipfw_flow_id *id1, struct ipfw_flow_id *id2)
{
 int is_v6 = IS_IP6_FLOW_ID(id1);

 if (!is_v6) {
     if (IS_IP6_FLOW_ID(id2))
  return 1;

     return (id1->dst_ip == id2->dst_ip &&
      id1->src_ip == id2->src_ip &&
      id1->dst_port == id2->dst_port &&
      id1->src_port == id2->src_port &&
      id1->proto == id2->proto &&
      id1->extra == id2->extra) ? 0 : 1;
 }

 return (
     !bcmp(&id1->dst_ip6,&id2->dst_ip6, sizeof(id1->dst_ip6)) &&
     !bcmp(&id1->src_ip6,&id2->src_ip6, sizeof(id1->src_ip6)) &&
     id1->dst_port == id2->dst_port &&
     id1->src_port == id2->src_port &&
     id1->proto == id2->proto &&
     id1->extra == id2->extra &&
     id1->flow_id6 == id2->flow_id6) ? 0 : 1;
}
