
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip {int ip_hl; scalar_t__ ip_p; int ip_len; int ip_off; } ;
struct bundle {TYPE_1__* iface; } ;
struct TYPE_2__ {int mtu; } ;


 int Enabled (struct bundle*,int ) ;
 scalar_t__ IPPROTO_TCP ;
 size_t IP_OFFMASK ;
 int MAXMSS (int ) ;
 scalar_t__ MBUF_CTOP (struct mbuf*) ;
 int MSSFixup (struct tcphdr*,size_t,int ) ;
 int OPT_TCPMSSFIXUP ;
 size_t m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 size_t ntohs (int ) ;

__attribute__((used)) static struct mbuf *
tcpmss_Check(struct bundle *bundle, struct mbuf *bp)
{
  struct ip *pip;
  size_t hlen, plen;

  if (!Enabled(bundle, OPT_TCPMSSFIXUP))
    return bp;

  bp = m_pullup(bp);
  plen = m_length(bp);
  pip = (struct ip *)MBUF_CTOP(bp);
  hlen = pip->ip_hl << 2;





  if (pip->ip_p == IPPROTO_TCP && (ntohs(pip->ip_off) & IP_OFFMASK) == 0 &&
      ntohs(pip->ip_len) == plen && hlen <= plen &&
      plen >= sizeof(struct tcphdr) + hlen)
    MSSFixup((struct tcphdr *)(MBUF_CTOP(bp) + hlen), plen - hlen,
             MAXMSS(bundle->iface->mtu));

  return bp;
}
