
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct udphdr {int uh_dport; int uh_sport; } ;
struct tcphdr {int th_dport; int th_sport; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {int s6_addr; } ;
struct TYPE_6__ {int s6_addr; } ;
struct ip6_hdr {int ip6_nxt; TYPE_2__ ip6_dst; TYPE_1__ ip6_src; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct ip {int ip_v; int ip_p; TYPE_4__ ip_dst; TYPE_3__ ip_src; } ;
struct fq_codel_si {int perturbation; } ;
struct TYPE_10__ {int iphdr_off; } ;


 int HASHINIT ;


 TYPE_5__* dn_tag_get (struct mbuf*) ;
 int jenkins_hash (int*,int,int ) ;
 int memcpy (int*,int ,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ mtodo (struct mbuf*,int ) ;

__attribute__((used)) static inline int
fq_codel_classify_flow(struct mbuf *m, uint16_t fcount, struct fq_codel_si *si)
{
 struct ip *ip;
 struct tcphdr *th;
 struct udphdr *uh;
 uint8_t tuple[41];
 uint16_t hash=0;

 ip = (struct ip *)mtodo(m, dn_tag_get(m)->iphdr_off);

 struct ip6_hdr *ip6;
 int isip6;
 isip6 = (ip->ip_v == 6);

 if(isip6) {
  ip6 = (struct ip6_hdr *)ip;
  *((uint8_t *) &tuple[0]) = ip6->ip6_nxt;
  *((uint32_t *) &tuple[1]) = si->perturbation;
  memcpy(&tuple[5], ip6->ip6_src.s6_addr, 16);
  memcpy(&tuple[21], ip6->ip6_dst.s6_addr, 16);

  switch (ip6->ip6_nxt) {
  case 129:
   th = (struct tcphdr *)(ip6 + 1);
   *((uint16_t *) &tuple[37]) = th->th_dport;
   *((uint16_t *) &tuple[39]) = th->th_sport;
   break;

  case 128:
   uh = (struct udphdr *)(ip6 + 1);
   *((uint16_t *) &tuple[37]) = uh->uh_dport;
   *((uint16_t *) &tuple[39]) = uh->uh_sport;
   break;
  default:
   memset(&tuple[37], 0, 4);

  }

  hash = jenkins_hash(tuple, 41, HASHINIT) % fcount;
  return hash;
 }



 *((uint8_t *) &tuple[0]) = ip->ip_p;
 *((uint32_t *) &tuple[1]) = si->perturbation;
 *((uint32_t *) &tuple[5]) = ip->ip_src.s_addr;
 *((uint32_t *) &tuple[9]) = ip->ip_dst.s_addr;

 switch (ip->ip_p) {
  case 129:
   th = (struct tcphdr *)(ip + 1);
   *((uint16_t *) &tuple[13]) = th->th_dport;
   *((uint16_t *) &tuple[15]) = th->th_sport;
   break;

  case 128:
   uh = (struct udphdr *)(ip + 1);
   *((uint16_t *) &tuple[13]) = uh->uh_dport;
   *((uint16_t *) &tuple[15]) = uh->uh_sport;
   break;
  default:
   memset(&tuple[13], 0, 4);

 }
 hash = jenkins_hash(tuple, 17, HASHINIT) % fcount;

 return hash;
}
