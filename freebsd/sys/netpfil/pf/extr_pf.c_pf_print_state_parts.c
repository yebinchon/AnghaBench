
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct pf_state_key {int proto; int af; int * port; int * addr; } ;
struct TYPE_4__ {int wscale; int seqlo; int seqhi; int max_win; int seqdiff; int state; } ;
struct TYPE_3__ {int seqlo; int seqhi; int max_win; int seqdiff; int wscale; int state; } ;
struct pf_state {int direction; TYPE_2__ dst; TYPE_1__ src; struct pf_state_key** key; } ;
 size_t PF_SK_STACK ;
 size_t PF_SK_WIRE ;
 int PF_WSCALE_MASK ;
 int pf_print_host (int *,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pf_print_state_parts(struct pf_state *s,
    struct pf_state_key *skwp, struct pf_state_key *sksp)
{
 struct pf_state_key *skw, *sks;
 u_int8_t proto, dir;


 skw = skwp ? skwp : (s ? s->key[PF_SK_WIRE] : ((void*)0));
 sks = sksp ? sksp : (s ? s->key[PF_SK_STACK] : ((void*)0));
 proto = skw ? skw->proto : (sks ? sks->proto : 0);
 dir = s ? s->direction : 0;

 switch (proto) {
 case 133:
  printf("IPv4");
  break;
 case 132:
  printf("IPv6");
  break;
 case 131:
  printf("TCP");
  break;
 case 130:
  printf("UDP");
  break;
 case 135:
  printf("ICMP");
  break;
 case 134:
  printf("ICMPv6");
  break;
 default:
  printf("%u", proto);
  break;
 }
 switch (dir) {
 case 129:
  printf(" in");
  break;
 case 128:
  printf(" out");
  break;
 }
 if (skw) {
  printf(" wire: ");
  pf_print_host(&skw->addr[0], skw->port[0], skw->af);
  printf(" ");
  pf_print_host(&skw->addr[1], skw->port[1], skw->af);
 }
 if (sks) {
  printf(" stack: ");
  if (sks != skw) {
   pf_print_host(&sks->addr[0], sks->port[0], sks->af);
   printf(" ");
   pf_print_host(&sks->addr[1], sks->port[1], sks->af);
  } else
   printf("-");
 }
 if (s) {
  if (proto == 131) {
   printf(" [lo=%u high=%u win=%u modulator=%u",
       s->src.seqlo, s->src.seqhi,
       s->src.max_win, s->src.seqdiff);
   if (s->src.wscale && s->dst.wscale)
    printf(" wscale=%u",
        s->src.wscale & PF_WSCALE_MASK);
   printf("]");
   printf(" [lo=%u high=%u win=%u modulator=%u",
       s->dst.seqlo, s->dst.seqhi,
       s->dst.max_win, s->dst.seqdiff);
   if (s->src.wscale && s->dst.wscale)
    printf(" wscale=%u",
    s->dst.wscale & PF_WSCALE_MASK);
   printf("]");
  }
  printf(" %u:%u", s->src.state, s->dst.state);
 }
}
