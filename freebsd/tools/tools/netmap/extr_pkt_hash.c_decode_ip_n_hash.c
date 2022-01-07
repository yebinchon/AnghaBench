
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct udphdr {int uh_sport; int uh_dport; } ;
struct tcphdr {int th_sport; int th_dport; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ip {int ip_p; int ip_hl; TYPE_2__ ip_dst; TYPE_1__ ip_src; } ;
 int decode_gre_hash (int*,int,int) ;
 int ntohl (int ) ;
 int ntohs (int) ;
 int sym_hash_fn (int ,int ,int,int) ;

__attribute__((used)) static uint32_t
decode_ip_n_hash(struct ip *iph, uint8_t hash_split, uint8_t seed)
{
 uint32_t rc = 0;

 if (hash_split == 2) {
  rc = sym_hash_fn(ntohl(iph->ip_src.s_addr),
   ntohl(iph->ip_dst.s_addr),
   ntohs(0xFFFD) + seed,
   ntohs(0xFFFE) + seed);
 } else {
  struct tcphdr *tcph = ((void*)0);
  struct udphdr *udph = ((void*)0);

  switch (iph->ip_p) {
  case 129:
   tcph = (struct tcphdr *)((uint8_t *)iph + (iph->ip_hl<<2));
   rc = sym_hash_fn(ntohl(iph->ip_src.s_addr),
      ntohl(iph->ip_dst.s_addr),
      ntohs(tcph->th_sport) + seed,
      ntohs(tcph->th_dport) + seed);
   break;
  case 128:
   udph = (struct udphdr *)((uint8_t *)iph + (iph->ip_hl<<2));
   rc = sym_hash_fn(ntohl(iph->ip_src.s_addr),
      ntohl(iph->ip_dst.s_addr),
      ntohs(udph->uh_sport) + seed,
      ntohs(udph->uh_dport) + seed);
   break;
  case 131:

   rc = decode_ip_n_hash((struct ip *)((uint8_t *)iph + (iph->ip_hl<<2)),
           hash_split, seed);
   break;
  case 134:
   rc = decode_gre_hash((uint8_t *)iph + (iph->ip_hl<<2),
     hash_split, seed);
   break;
  case 133:
  case 135:
  case 130:
  case 132:
  default:




   rc = sym_hash_fn(ntohl(iph->ip_src.s_addr),
      ntohl(iph->ip_dst.s_addr),
      ntohs(0xFFFD) + seed,
      ntohs(0xFFFE) + seed);
   break;
  }
 }
 return rc;
}
