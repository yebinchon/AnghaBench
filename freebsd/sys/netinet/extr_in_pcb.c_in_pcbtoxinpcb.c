
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xinpcb {int xi_len; uintptr_t inp_ppcb; int inp_ip_minttl; int inp_ip_p; int inp_ip_ttl; int inp_vflag; int inp_ip_tos; int in6p_hops; int in6p_cksum; int inp_rss_listen_bucket; int inp_flags2; int inp_flags; int inp_flowtype; int inp_flowid; int inp_flow; int inp_gencnt; int inp_inc; int xi_socket; } ;
struct inpcb {int inp_ip_minttl; int inp_ip_p; int inp_ip_ttl; int inp_vflag; int inp_ip_tos; int in6p_hops; int in6p_cksum; int inp_rss_listen_bucket; int inp_flags2; int inp_flags; int inp_flowtype; int inp_flowid; int inp_flow; scalar_t__ inp_ppcb; int inp_gencnt; int inp_inc; scalar_t__ inp_socket; } ;
struct in_conninfo {int dummy; } ;


 int bcopy (int *,int *,int) ;
 int bzero (struct xinpcb*,int) ;
 int sotoxsocket (scalar_t__,int *) ;

void
in_pcbtoxinpcb(const struct inpcb *inp, struct xinpcb *xi)
{

 bzero(xi, sizeof(*xi));
 xi->xi_len = sizeof(struct xinpcb);
 if (inp->inp_socket)
  sotoxsocket(inp->inp_socket, &xi->xi_socket);
 bcopy(&inp->inp_inc, &xi->inp_inc, sizeof(struct in_conninfo));
 xi->inp_gencnt = inp->inp_gencnt;
 xi->inp_ppcb = (uintptr_t)inp->inp_ppcb;
 xi->inp_flow = inp->inp_flow;
 xi->inp_flowid = inp->inp_flowid;
 xi->inp_flowtype = inp->inp_flowtype;
 xi->inp_flags = inp->inp_flags;
 xi->inp_flags2 = inp->inp_flags2;
 xi->inp_rss_listen_bucket = inp->inp_rss_listen_bucket;
 xi->in6p_cksum = inp->in6p_cksum;
 xi->in6p_hops = inp->in6p_hops;
 xi->inp_ip_tos = inp->inp_ip_tos;
 xi->inp_vflag = inp->inp_vflag;
 xi->inp_ip_ttl = inp->inp_ip_ttl;
 xi->inp_ip_p = inp->inp_ip_p;
 xi->inp_ip_minttl = inp->inp_ip_minttl;
}
