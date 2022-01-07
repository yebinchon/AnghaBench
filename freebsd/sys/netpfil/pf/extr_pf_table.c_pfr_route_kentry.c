
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sockaddr_union {int dummy; } sockaddr_union ;
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentry {int pfrke_node; int pfrke_sa; int pfrke_net; int pfrke_af; } ;
struct TYPE_4__ {struct radix_head rh; } ;
struct TYPE_3__ {struct radix_head rh; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ KENTRY_NETWORK (struct pfr_kentry*) ;
 int PF_RULES_WASSERT () ;
 int bzero (int ,int) ;
 int pfr_prepare_network (union sockaddr_union*,int ,int ) ;
 struct radix_node* rn_addroute (int *,union sockaddr_union*,struct radix_head*,int ) ;

__attribute__((used)) static int
pfr_route_kentry(struct pfr_ktable *kt, struct pfr_kentry *ke)
{
 union sockaddr_union mask;
 struct radix_node *rn;
 struct radix_head *head = ((void*)0);

 PF_RULES_WASSERT();

 bzero(ke->pfrke_node, sizeof(ke->pfrke_node));
 if (ke->pfrke_af == AF_INET)
  head = &kt->pfrkt_ip4->rh;
 else if (ke->pfrke_af == AF_INET6)
  head = &kt->pfrkt_ip6->rh;

 if (KENTRY_NETWORK(ke)) {
  pfr_prepare_network(&mask, ke->pfrke_af, ke->pfrke_net);
  rn = rn_addroute(&ke->pfrke_sa, &mask, head, ke->pfrke_node);
 } else
  rn = rn_addroute(&ke->pfrke_sa, ((void*)0), head, ke->pfrke_node);

 return (rn == ((void*)0) ? -1 : 0);
}
