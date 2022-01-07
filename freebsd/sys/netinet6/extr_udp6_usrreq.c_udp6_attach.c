
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_6__ {scalar_t__ sb_hiwat; } ;
struct TYPE_5__ {scalar_t__ sb_hiwat; } ;
struct socket {scalar_t__ so_pcb; TYPE_3__ so_rcv; TYPE_2__ so_snd; TYPE_1__* so_proto; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {int inp_flags; int in6p_hops; int in6p_cksum; int inp_ip_ttl; int inp_vflag; } ;
struct TYPE_4__ {int pr_protocol; } ;


 int IN6P_IPV6_V6ONLY ;
 int INP_INFO_WLOCK (struct inpcbinfo*) ;
 int INP_INFO_WUNLOCK (struct inpcbinfo*) ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int V_ip_defttl ;
 int in_pcballoc (struct socket*,struct inpcbinfo*) ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbfree (struct inpcb*) ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct inpcbinfo* udp_get_inpcbinfo (int ) ;
 int udp_newudpcb (struct inpcb*) ;
 int udp_recvspace ;
 int udp_sendspace ;

__attribute__((used)) static int
udp6_attach(struct socket *so, int proto, struct thread *td)
{
 struct inpcb *inp;
 struct inpcbinfo *pcbinfo;
 int error;

 pcbinfo = udp_get_inpcbinfo(so->so_proto->pr_protocol);
 inp = sotoinpcb(so);
 KASSERT(inp == ((void*)0), ("udp6_attach: inp != NULL"));

 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  error = soreserve(so, udp_sendspace, udp_recvspace);
  if (error)
   return (error);
 }
 INP_INFO_WLOCK(pcbinfo);
 error = in_pcballoc(so, pcbinfo);
 if (error) {
  INP_INFO_WUNLOCK(pcbinfo);
  return (error);
 }
 inp = (struct inpcb *)so->so_pcb;
 inp->inp_vflag |= INP_IPV6;
 if ((inp->inp_flags & IN6P_IPV6_V6ONLY) == 0)
  inp->inp_vflag |= INP_IPV4;
 inp->in6p_hops = -1;
 inp->in6p_cksum = -1;






 inp->inp_ip_ttl = V_ip_defttl;

 error = udp_newudpcb(inp);
 if (error) {
  in_pcbdetach(inp);
  in_pcbfree(inp);
  INP_INFO_WUNLOCK(pcbinfo);
  return (error);
 }
 INP_WUNLOCK(inp);
 INP_INFO_WUNLOCK(pcbinfo);
 return (0);
}
