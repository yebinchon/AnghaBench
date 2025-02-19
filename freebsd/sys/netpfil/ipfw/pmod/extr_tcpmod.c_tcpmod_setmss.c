
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct tcphdr {int th_sum; } ;
struct TYPE_2__ {scalar_t__ len; int csum_flags; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
typedef int oldmss ;
typedef int mss ;
typedef int csum ;


 int CSUM_TCP ;
 int CSUM_TCP_IPV6 ;
 int IP_FW_DENY ;
 int TCPOLEN_MAXSEG ;
 int TCPOPT_EOL ;
 int TCPOPT_MAXSEG ;
 int TCPOPT_NOP ;
 int bcopy (int*,int*,int) ;
 int cksum_adjust (int,int,int) ;
 struct mbuf* m_pullup (struct mbuf*,scalar_t__) ;
 scalar_t__ ntohs (int) ;

__attribute__((used)) static int
tcpmod_setmss(struct mbuf **mp, struct tcphdr *tcp, int tlen, uint16_t mss)
{
 struct mbuf *m;
 u_char *cp;
 int optlen, ret;
 uint16_t oldmss, csum;

 m = *mp;
 ret = IP_FW_DENY;
 if (m->m_len < m->m_pkthdr.len) {




  *mp = m = m_pullup(m, m->m_pkthdr.len);
  if (m == ((void*)0))
   return (ret);
 }

 for (tlen -= sizeof(struct tcphdr), cp = (u_char *)(tcp + 1);
     tlen > 0; tlen -= optlen, cp += optlen) {
  if (cp[0] == TCPOPT_EOL)
   break;
  if (cp[0] == TCPOPT_NOP) {
   optlen = 1;
   continue;
  }
  if (tlen < 2)
   break;
  optlen = cp[1];
  if (optlen < 2 || optlen > tlen)
   break;
  if (cp[0] == TCPOPT_MAXSEG) {
   if (optlen != TCPOLEN_MAXSEG)
    break;
   ret = 0;
   bcopy(cp + 2, &oldmss, sizeof(oldmss));

   if (ntohs(oldmss) <= ntohs(mss))
    break;
   bcopy(&mss, cp + 2, sizeof(mss));

   if ((m->m_pkthdr.csum_flags &
       (CSUM_TCP | CSUM_TCP_IPV6)) == 0) {
    bcopy(&tcp->th_sum, &csum, sizeof(csum));
    csum = cksum_adjust(csum, oldmss, mss);
    bcopy(&csum, &tcp->th_sum, sizeof(csum));
   }
   break;
  }
 }

 return (ret);
}
