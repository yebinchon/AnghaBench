
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int16_t ;
struct tcphdr {int dummy; } ;
struct pf_addr {int v6; int v4; } ;
struct nhop6_basic {int nh_mtu; } ;
struct nhop4_basic {int nh_mtu; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int sa_family_t ;




 int V_tcp_mssdflt ;
 int fib4_lookup_nh_basic (int,int ,int ,int ,struct nhop4_basic*) ;
 int fib6_lookup_nh_basic (int,struct in6_addr*,int ,int ,int ,struct nhop6_basic*) ;
 int in6_splitscope (int *,struct in6_addr*,int *) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static u_int16_t
pf_calc_mss(struct pf_addr *addr, sa_family_t af, int rtableid, u_int16_t offer)
{
 int hlen = 0;
 uint16_t mss = 0;

 switch (af) {
 }

 mss = max(V_tcp_mssdflt, mss);
 mss = min(mss, offer);
 mss = max(mss, 64);
 return (mss);
}
