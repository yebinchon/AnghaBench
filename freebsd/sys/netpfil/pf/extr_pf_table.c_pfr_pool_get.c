
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sin6_len; int sin6_family; } ;
struct TYPE_5__ {int sin_len; int sin_family; } ;
union sockaddr_union {TYPE_2__ sin6; TYPE_1__ sin; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_match; TYPE_4__* pfrkt_ip6; TYPE_3__* pfrkt_ip4; int pfrkt_nomatch; struct pfr_ktable* pfrkt_root; } ;
struct pfr_kentry {int pfrke_net; union sockaddr_union pfrke_sa; } ;
struct pf_addr {int dummy; } ;
typedef int const sa_family_t ;
struct TYPE_8__ {int rh; } ;
struct TYPE_7__ {int rh; } ;




 int KENTRY_NETWORK (struct pfr_kentry*) ;
 int PFR_TFLAG_ACTIVE ;
 int PF_ACPY (struct pf_addr*,struct pf_addr*,int const) ;
 int PF_AINC (struct pf_addr*,int const) ;
 int PF_MATCHA (int ,struct pf_addr*,struct pf_addr*,struct pf_addr*,int const) ;
 int PF_POOLMASK (struct pf_addr*,struct pf_addr*,struct pf_addr*,int *,int const) ;
 struct pf_addr* SUNION2PF (union sockaddr_union*,int const) ;
 int counter_u64_add (int ,int) ;
 int pfr_ffaddr ;
 struct pfr_kentry* pfr_kentry_byidx (struct pfr_ktable*,int,int const) ;
 int pfr_prepare_network (union sockaddr_union*,int const,int ) ;
 scalar_t__ rn_match (union sockaddr_union*,int *) ;

int
pfr_pool_get(struct pfr_ktable *kt, int *pidx, struct pf_addr *counter,
    sa_family_t af)
{
 struct pf_addr *addr, *cur, *mask;
 union sockaddr_union uaddr, umask;
 struct pfr_kentry *ke, *ke2 = ((void*)0);
 int idx = -1, use_counter = 0;

 switch (af) {
 case 129:
  uaddr.sin.sin_len = sizeof(struct sockaddr_in);
  uaddr.sin.sin_family = 129;
  break;
 case 128:
  uaddr.sin6.sin6_len = sizeof(struct sockaddr_in6);
  uaddr.sin6.sin6_family = 128;
  break;
 }
 addr = SUNION2PF(&uaddr, af);

 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != ((void*)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (-1);

 if (pidx != ((void*)0))
  idx = *pidx;
 if (counter != ((void*)0) && idx >= 0)
  use_counter = 1;
 if (idx < 0)
  idx = 0;

_next_block:
 ke = pfr_kentry_byidx(kt, idx, af);
 if (ke == ((void*)0)) {
  counter_u64_add(kt->pfrkt_nomatch, 1);
  return (1);
 }
 pfr_prepare_network(&umask, af, ke->pfrke_net);
 cur = SUNION2PF(&ke->pfrke_sa, af);
 mask = SUNION2PF(&umask, af);

 if (use_counter) {

  if (!PF_MATCHA(0, cur, mask, counter, af)) {

   idx++;
   use_counter = 0;
   goto _next_block;
  }
  PF_ACPY(addr, counter, af);
 } else {

  PF_ACPY(addr, cur, af);
 }

 if (!KENTRY_NETWORK(ke)) {

  PF_ACPY(counter, addr, af);
  *pidx = idx;
  counter_u64_add(kt->pfrkt_match, 1);
  return (0);
 }
 for (;;) {

  switch (af) {
  case 129:
   ke2 = (struct pfr_kentry *)rn_match(&uaddr,
       &kt->pfrkt_ip4->rh);
   break;
  case 128:
   ke2 = (struct pfr_kentry *)rn_match(&uaddr,
       &kt->pfrkt_ip6->rh);
   break;
  }

  if (ke2 == ke) {

   PF_ACPY(counter, addr, af);
   *pidx = idx;
   counter_u64_add(kt->pfrkt_match, 1);
   return (0);
  }


  pfr_prepare_network(&umask, 129, ke2->pfrke_net);
  PF_POOLMASK(addr, addr, SUNION2PF(&umask, af), &pfr_ffaddr, af);
  PF_AINC(addr, af);
  if (!PF_MATCHA(0, cur, mask, addr, af)) {


   idx++;
   use_counter = 0;
   goto _next_block;
  }
 }
}
