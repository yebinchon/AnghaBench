
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct udphdr {int dummy; } ;
struct tcphdr {int th_off; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct ip {int ip_hl; int ip_p; int ip_off; int ip_len; } ;


 int IPPROTO_DONE ;


 int IP_MF ;
 int IP_OFFMASK ;
 struct ip* mtodo (struct mbuf const*,int) ;
 int ntohs (int ) ;

__attribute__((used)) static int
hn_check_iplen(const struct mbuf *m, int hoff)
{
 const struct ip *ip;
 int len, iphlen, iplen;
 const struct tcphdr *th;
 int thoff;

 len = hoff + sizeof(struct ip);


 if (m->m_pkthdr.len < len)
  return IPPROTO_DONE;


 if (m->m_len < len)
  return IPPROTO_DONE;

 ip = mtodo(m, hoff);


 iphlen = ip->ip_hl << 2;
 if (iphlen < sizeof(struct ip))
  return IPPROTO_DONE;


 if (m->m_len < hoff + iphlen)
  return IPPROTO_DONE;

 iplen = ntohs(ip->ip_len);





 if (m->m_pkthdr.len < hoff + iplen)
  return IPPROTO_DONE;




 if (ntohs(ip->ip_off) & (IP_OFFMASK | IP_MF))
  return IPPROTO_DONE;





 switch (ip->ip_p) {
 case 129:
  if (iplen < iphlen + sizeof(struct tcphdr))
   return IPPROTO_DONE;
  if (m->m_len < hoff + iphlen + sizeof(struct tcphdr))
   return IPPROTO_DONE;
  th = (const struct tcphdr *)((const uint8_t *)ip + iphlen);
  thoff = th->th_off << 2;
  if (thoff < sizeof(struct tcphdr) || thoff + iphlen > iplen)
   return IPPROTO_DONE;
  if (m->m_len < hoff + iphlen + thoff)
   return IPPROTO_DONE;
  break;
 case 128:
  if (iplen < iphlen + sizeof(struct udphdr))
   return IPPROTO_DONE;
  if (m->m_len < hoff + iphlen + sizeof(struct udphdr))
   return IPPROTO_DONE;
  break;
 default:
  if (iplen < iphlen)
   return IPPROTO_DONE;
  break;
 }
 return ip->ip_p;
}
