
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct mbuf {int dummy; } ;
struct ip6_hbh {int ip6h_len; } ;


 int IP6STAT_INC (int ) ;
 int caddr_t ;
 scalar_t__ ip6_process_hopopts (struct mbuf*,int *,int,int *,int *) ;
 int ip6s_exthdrtoolong ;
 struct mbuf* m_pullup (struct mbuf*,int) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

__attribute__((used)) static int
ip6_hopopts_input(u_int32_t *plenp, u_int32_t *rtalertp,
    struct mbuf **mp, int *offp)
{
 struct mbuf *m = *mp;
 int off = *offp, hbhlen;
 struct ip6_hbh *hbh;


 m = m_pullup(m, off + sizeof(*hbh));
 if (m == ((void*)0)) {
  IP6STAT_INC(ip6s_exthdrtoolong);
  *mp = ((void*)0);
  return (-1);
 }
 hbh = (struct ip6_hbh *)(mtod(m, caddr_t) + off);
 hbhlen = (hbh->ip6h_len + 1) << 3;

 m = m_pullup(m, off + hbhlen);
 if (m == ((void*)0)) {
  IP6STAT_INC(ip6s_exthdrtoolong);
  *mp = ((void*)0);
  return (-1);
 }
 hbh = (struct ip6_hbh *)(mtod(m, caddr_t) + off);
 off += hbhlen;
 hbhlen -= sizeof(struct ip6_hbh);
 if (ip6_process_hopopts(m, (u_int8_t *)hbh + sizeof(struct ip6_hbh),
    hbhlen, rtalertp, plenp) < 0) {
  *mp = ((void*)0);
  return (-1);
 }

 *offp = off;
 *mp = m;
 return (0);
}
