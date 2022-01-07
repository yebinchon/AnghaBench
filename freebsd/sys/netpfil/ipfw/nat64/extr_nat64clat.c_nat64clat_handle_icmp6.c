
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pfloghdr {int dummy; } ;
struct nat64_counters {int dummy; } ;
struct TYPE_6__ {int flags; int clat_plen; struct nat64_counters stats; } ;
struct TYPE_5__ {int kidx; } ;
struct nat64clat_cfg {TYPE_3__ base; TYPE_2__ no; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct ip_fw_chain {int dummy; } ;
struct ip6_hdr {int ip6_dst; } ;
struct icmp6_hdr {int icmp6_type; } ;


 int AF_INET6 ;




 scalar_t__ ICMP_MINLEN ;
 int IPPROTO_ICMPV6 ;
 int NAT64MFREE ;
 int NAT64RETURN ;
 int NAT64STAT_INC (struct nat64_counters*,int ) ;
 int NAT64_LOG ;
 int dropped ;
 struct mbuf* m_pullup (struct mbuf*,scalar_t__) ;
 void* mtodo (struct mbuf*,int) ;
 scalar_t__ nat64_extract_ip4 (int *,int ) ;
 int nat64_getlasthdr (struct mbuf*,int*) ;
 int nat64_handle_icmp6 (struct mbuf*,int ,scalar_t__,int ,TYPE_3__*,struct pfloghdr*) ;
 int nat64clat_log (struct pfloghdr*,struct mbuf*,int ,int ) ;
 int nomem ;

__attribute__((used)) static int
nat64clat_handle_icmp6(struct ip_fw_chain *chain, struct nat64clat_cfg *cfg,
    struct mbuf *m)
{
 struct pfloghdr loghdr, *logdata;
 struct nat64_counters *stats;
 struct ip6_hdr *ip6i;
 struct icmp6_hdr *icmp6;
 uint32_t daddr;
 int hlen, proto;

 hlen = 0;
 stats = &cfg->base.stats;
 proto = nat64_getlasthdr(m, &hlen);
 if (proto != IPPROTO_ICMPV6) {
  NAT64STAT_INC(stats, dropped);
  return (NAT64MFREE);
 }
 icmp6 = mtodo(m, hlen);
 switch (icmp6->icmp6_type) {
 case 131:
 case 130:
 case 128:
 case 129:
  break;
 default:
  NAT64STAT_INC(stats, dropped);
  return (NAT64MFREE);
 }
 hlen += sizeof(struct icmp6_hdr);
 if (m->m_pkthdr.len < hlen + sizeof(struct ip6_hdr) + ICMP_MINLEN) {
  NAT64STAT_INC(stats, dropped);
  return (NAT64MFREE);
 }
 if (m->m_len < hlen + sizeof(struct ip6_hdr) + ICMP_MINLEN)
  m = m_pullup(m, hlen + sizeof(struct ip6_hdr) + ICMP_MINLEN);
 if (m == ((void*)0)) {
  NAT64STAT_INC(stats, nomem);
  return (NAT64RETURN);
 }




 ip6i = mtodo(m, hlen);
 daddr = nat64_extract_ip4(&ip6i->ip6_dst, cfg->base.clat_plen);
 if (daddr == 0) {
  NAT64STAT_INC(stats, dropped);
  return (NAT64MFREE);
 }
 if (cfg->base.flags & NAT64_LOG) {
  logdata = &loghdr;
  nat64clat_log(logdata, m, AF_INET6, cfg->no.kidx);
 } else
  logdata = ((void*)0);
 return (nat64_handle_icmp6(m, 0, daddr, 0, &cfg->base, logdata));
}
