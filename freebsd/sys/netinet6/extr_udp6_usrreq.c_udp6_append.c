
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct udpcb {int u_tun_ctx; int (* u_tun_func ) (struct mbuf*,int,struct inpcb*,struct sockaddr*,int ) ;} ;
struct socket {int so_options; int so_rcv; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {struct mbuf* m_next; } ;
struct inpcb {int inp_flags; int inp_vflag; int inp_flags2; struct socket* inp_socket; } ;
typedef int caddr_t ;


 int INP_CONTROLOPTS ;
 int INP_IPV6 ;
 int INP_LOCK_ASSERT (struct inpcb*) ;
 int INP_ORIGDSTADDR ;
 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int IPPROTO_IPV6 ;
 scalar_t__ IPSEC_CHECK_POLICY (int ,struct mbuf*,struct inpcb*) ;
 scalar_t__ IPSEC_ENABLED (int ) ;
 int IPV6_ORIGDSTADDR ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int SO_TIMESTAMP ;
 int UDPSTAT_INC (int ) ;
 int in_pcbref (struct inpcb*) ;
 int in_pcbrele_rlocked (struct inpcb*) ;
 struct udpcb* intoudpcb (struct inpcb*) ;
 int ip6_savecontrol (struct inpcb*,struct mbuf*,struct mbuf**) ;
 int ipv6 ;
 int m_adj (struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mac_inpcb_check_deliver (struct inpcb*,struct mbuf*) ;
 scalar_t__ sbappendaddr_locked (int *,struct sockaddr*,struct mbuf*,struct mbuf*) ;
 struct mbuf* sbcreatecontrol (int ,int,int ,int ) ;
 int sorwakeup_locked (struct socket*) ;
 int stub1 (struct mbuf*,int,struct inpcb*,struct sockaddr*,int ) ;
 int udps_fullsock ;

__attribute__((used)) static int
udp6_append(struct inpcb *inp, struct mbuf *n, int off,
    struct sockaddr_in6 *fromsa)
{
 struct socket *so;
 struct mbuf *opts = ((void*)0), *tmp_opts;
 struct udpcb *up;

 INP_LOCK_ASSERT(inp);




 up = intoudpcb(inp);
 if (up->u_tun_func != ((void*)0)) {
  in_pcbref(inp);
  INP_RUNLOCK(inp);
  (*up->u_tun_func)(n, off, inp, (struct sockaddr *)&fromsa[0],
      up->u_tun_ctx);
  INP_RLOCK(inp);
  return (in_pcbrele_rlocked(inp));
 }
 opts = ((void*)0);
 if (inp->inp_flags & INP_CONTROLOPTS ||
     inp->inp_socket->so_options & SO_TIMESTAMP)
  ip6_savecontrol(inp, n, &opts);
 if ((inp->inp_vflag & INP_IPV6) && (inp->inp_flags2 & INP_ORIGDSTADDR)) {
  tmp_opts = sbcreatecontrol((caddr_t)&fromsa[1],
                        sizeof(struct sockaddr_in6), IPV6_ORIGDSTADDR, IPPROTO_IPV6);
                if (tmp_opts) {
                        if (opts) {
                                tmp_opts->m_next = opts;
                                opts = tmp_opts;
                        } else
                                opts = tmp_opts;
                }

 }
 m_adj(n, off + sizeof(struct udphdr));

 so = inp->inp_socket;
 SOCKBUF_LOCK(&so->so_rcv);
 if (sbappendaddr_locked(&so->so_rcv, (struct sockaddr *)&fromsa[0], n,
     opts) == 0) {
  SOCKBUF_UNLOCK(&so->so_rcv);
  m_freem(n);
  if (opts)
   m_freem(opts);
  UDPSTAT_INC(udps_fullsock);
 } else
  sorwakeup_locked(so);
 return (0);
}
