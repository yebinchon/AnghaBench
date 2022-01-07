
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int th_off; scalar_t__ th_sum; scalar_t__ th_urp; scalar_t__ th_win; scalar_t__ th_flags; scalar_t__ th_x2; scalar_t__ th_ack; scalar_t__ th_seq; int th_dport; int th_sport; } ;
struct ip6_hdr {int ip6_flow; int ip6_vfc; int ip6_dst; int ip6_src; int ip6_plen; void* ip6_nxt; } ;
struct ip {int ip_hl; int ip_dst; int ip_src; void* ip_p; scalar_t__ ip_sum; int ip_ttl; scalar_t__ ip_off; scalar_t__ ip_id; scalar_t__ ip_len; int ip_tos; int ip_v; } ;
struct inpcb {int inp_vflag; int inp_flow; int inp_fport; int inp_lport; int inp_faddr; int inp_laddr; int inp_ip_ttl; int inp_ip_tos; int in6p_faddr; int in6p_laddr; } ;


 int INP_IPV6 ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 void* IPPROTO_TCP ;
 int IPV6_FLOWINFO_MASK ;
 int IPV6_VERSION ;
 int IPV6_VERSION_MASK ;
 int IPVERSION ;
 int htons (int) ;

void
tcpip_fillheaders(struct inpcb *inp, void *ip_ptr, void *tcp_ptr)
{
 struct tcphdr *th = (struct tcphdr *)tcp_ptr;

 INP_WLOCK_ASSERT(inp);
 th->th_sport = inp->inp_lport;
 th->th_dport = inp->inp_fport;
 th->th_seq = 0;
 th->th_ack = 0;
 th->th_x2 = 0;
 th->th_off = 5;
 th->th_flags = 0;
 th->th_win = 0;
 th->th_urp = 0;
 th->th_sum = 0;
}
