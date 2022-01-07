
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int t4 ;
struct ipfw_flow_id {int src_port; int dst_port; int src_ip; int dst_ip; } ;
typedef int in_addr_t ;


 scalar_t__ IS_IP4_FLOW_ID (struct ipfw_flow_id const*) ;
 scalar_t__ IS_IP6_FLOW_ID (struct ipfw_flow_id const*) ;
 int V_dyn_hashseed ;
 scalar_t__ addrcmp4 (struct ipfw_flow_id const*) ;
 int hash_packet6 (struct ipfw_flow_id const*) ;
 int jenkins_hash32 (int const*,int,int ) ;

__attribute__((used)) static __inline uint32_t
hash_packet(const struct ipfw_flow_id *id)
{
 struct tuple4 {
  in_addr_t addr[2];
  uint16_t port[2];
 } t4;

 if (IS_IP4_FLOW_ID(id)) {

  if (addrcmp4(id) == 0) {
   t4.addr[0] = id->src_ip;
   t4.addr[1] = id->dst_ip;
   t4.port[0] = id->src_port;
   t4.port[1] = id->dst_port;
  } else {
   t4.addr[0] = id->dst_ip;
   t4.addr[1] = id->src_ip;
   t4.port[0] = id->dst_port;
   t4.port[1] = id->src_port;
  }
  return (jenkins_hash32((const uint32_t *)&t4,
      sizeof(t4) / sizeof(uint32_t), V_dyn_hashseed));
 } else




 return (0);
}
