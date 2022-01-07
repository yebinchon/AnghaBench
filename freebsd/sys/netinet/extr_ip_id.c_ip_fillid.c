
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ip {int ip_off; int ip_id; } ;


 int IP_DF ;
 scalar_t__ V_ip_do_randomid ;
 int V_ip_id ;
 scalar_t__ V_ip_rfc6864 ;
 int counter_u64_add (int ,int) ;
 int htons (int) ;
 int ip_randomid () ;
 scalar_t__ zpcpu_get (int ) ;

void
ip_fillid(struct ip *ip)
{







 if (V_ip_rfc6864 && (ip->ip_off & htons(IP_DF)) == htons(IP_DF))
  ip->ip_id = 0;
 else if (V_ip_do_randomid)
  ip->ip_id = ip_randomid();
 else {
  counter_u64_add(V_ip_id, 1);
  ip->ip_id = htons((*(uint64_t *)zpcpu_get(V_ip_id)) & 0xffff);
 }
}
