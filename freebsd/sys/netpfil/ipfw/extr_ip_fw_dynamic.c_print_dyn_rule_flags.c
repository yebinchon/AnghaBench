
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfw_flow_id {int dst_port; int src_port; int dst_ip; int src_ip; int dst_ip6; int src_ip6; } ;
struct in_addr {void* s_addr; } ;
typedef int src ;
typedef int dst ;


 int AF_INET ;
 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 scalar_t__ IS_IP6_FLOW_ID (struct ipfw_flow_id const*) ;
 int V_dyn_count ;
 void* htonl (int ) ;
 int inet_ntop (int ,struct in_addr*,char*,int) ;
 int ip6_sprintf (char*,int *) ;
 int log (int,char*,char*,int,char*,int ,char*,int ,int ,char*) ;

__attribute__((used)) static void
print_dyn_rule_flags(const struct ipfw_flow_id *id, int dyn_type,
    int log_flags, char *prefix, char *postfix)
{
 struct in_addr da;



 char src[INET_ADDRSTRLEN], dst[INET_ADDRSTRLEN];
 {
  da.s_addr = htonl(id->src_ip);
  inet_ntop(AF_INET, &da, src, sizeof(src));
  da.s_addr = htonl(id->dst_ip);
  inet_ntop(AF_INET, &da, dst, sizeof(dst));
 }
 log(log_flags, "ipfw: %s type %d %s %d -> %s %d, %d %s\n",
     prefix, dyn_type, src, id->src_port, dst,
     id->dst_port, V_dyn_count, postfix);
}
