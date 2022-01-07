
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union sockaddr_union {int sin6; int sin; } ;
struct radix_head {int dummy; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int pfra_net; int pfra_af; int pfra_ip6addr; int pfra_ip4addr; } ;
typedef int sa ;
struct TYPE_4__ {struct radix_head rh; } ;
struct TYPE_3__ {struct radix_head rh; } ;


 scalar_t__ ADDR_NETWORK (struct pfr_addr*) ;
 int AF_INET ;
 int AF_INET6 ;
 int FILLIN_SIN (int ,int ) ;
 int FILLIN_SIN6 (int ,int ) ;
 scalar_t__ KENTRY_NETWORK (struct pfr_kentry*) ;
 scalar_t__ KENTRY_RNF_ROOT (struct pfr_kentry*) ;
 int PF_RULES_ASSERT () ;
 int bzero (union sockaddr_union*,int) ;
 int pfr_prepare_network (union sockaddr_union*,int ,int ) ;
 scalar_t__ rn_lookup (union sockaddr_union*,union sockaddr_union*,struct radix_head*) ;
 scalar_t__ rn_match (union sockaddr_union*,struct radix_head*) ;

__attribute__((used)) static struct pfr_kentry *
pfr_lookup_addr(struct pfr_ktable *kt, struct pfr_addr *ad, int exact)
{
 union sockaddr_union sa, mask;
 struct radix_head *head = ((void*)0);
 struct pfr_kentry *ke;

 PF_RULES_ASSERT();

 bzero(&sa, sizeof(sa));
 if (ad->pfra_af == AF_INET) {
  FILLIN_SIN(sa.sin, ad->pfra_ip4addr);
  head = &kt->pfrkt_ip4->rh;
 } else if ( ad->pfra_af == AF_INET6 ) {
  FILLIN_SIN6(sa.sin6, ad->pfra_ip6addr);
  head = &kt->pfrkt_ip6->rh;
 }
 if (ADDR_NETWORK(ad)) {
  pfr_prepare_network(&mask, ad->pfra_af, ad->pfra_net);
  ke = (struct pfr_kentry *)rn_lookup(&sa, &mask, head);
  if (ke && KENTRY_RNF_ROOT(ke))
   ke = ((void*)0);
 } else {
  ke = (struct pfr_kentry *)rn_match(&sa, head);
  if (ke && KENTRY_RNF_ROOT(ke))
   ke = ((void*)0);
  if (exact && ke && KENTRY_NETWORK(ke))
   ke = ((void*)0);
 }
 return (ke);
}
