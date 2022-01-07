
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; } ;
struct ip6_hdr {int ip6_nxt; scalar_t__ ip6_plen; } ;
struct ip6_hbh {int ip6h_nxt; int ip6h_len; } ;


 int IPPROTO_DSTOPTS ;
 int IPPROTO_HOPOPTS ;
 int IPPROTO_ROUTING ;
 void* mtodo (struct mbuf*,int) ;

int
nat64_getlasthdr(struct mbuf *m, int *offset)
{
 struct ip6_hdr *ip6;
 struct ip6_hbh *hbh;
 int proto, hlen;

 if (offset != ((void*)0))
  hlen = *offset;
 else
  hlen = 0;

 if (m->m_len < hlen + sizeof(*ip6))
  return (-1);

 ip6 = mtodo(m, hlen);
 hlen += sizeof(*ip6);
 proto = ip6->ip6_nxt;

 while (proto == IPPROTO_HOPOPTS || proto == IPPROTO_ROUTING ||
     proto == IPPROTO_DSTOPTS) {
  hbh = mtodo(m, hlen);




  if (m->m_len < hlen)
   return (-1);




  if (proto == IPPROTO_HOPOPTS && ip6->ip6_plen == 0)
   return (-1);
  proto = hbh->ip6h_nxt;
  hlen += (hbh->ip6h_len + 1) << 3;
 }
 if (offset != ((void*)0))
  *offset = hlen;
 return (proto);
}
