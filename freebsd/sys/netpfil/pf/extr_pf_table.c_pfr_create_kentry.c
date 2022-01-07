
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6; int sin; } ;
struct pfr_kentry {scalar_t__ pfrke_af; int pfrke_counters; int pfrke_not; int pfrke_net; TYPE_1__ pfrke_sa; } ;
struct pfr_addr {scalar_t__ pfra_af; int pfra_not; int pfra_net; int pfra_ip6addr; int pfra_ip4addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FILLIN_SIN (int ,int ) ;
 int FILLIN_SIN6 (int ,int ) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PFR_DIR_MAX ;
 int PFR_OP_ADDR_MAX ;
 int V_pfr_kentry_z ;
 int pfr_create_kentry_counter (int *,int,int) ;
 int pfr_destroy_kentry (struct pfr_kentry*) ;
 struct pfr_kentry* uma_zalloc (int ,int) ;

__attribute__((used)) static struct pfr_kentry *
pfr_create_kentry(struct pfr_addr *ad)
{
 struct pfr_kentry *ke;
 int pfr_dir, pfr_op;

 ke = uma_zalloc(V_pfr_kentry_z, M_NOWAIT | M_ZERO);
 if (ke == ((void*)0))
  return (((void*)0));

 if (ad->pfra_af == AF_INET)
  FILLIN_SIN(ke->pfrke_sa.sin, ad->pfra_ip4addr);
 else if (ad->pfra_af == AF_INET6)
  FILLIN_SIN6(ke->pfrke_sa.sin6, ad->pfra_ip6addr);
 ke->pfrke_af = ad->pfra_af;
 ke->pfrke_net = ad->pfra_net;
 ke->pfrke_not = ad->pfra_not;
 for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++)
  for (pfr_op = 0; pfr_op < PFR_OP_ADDR_MAX; pfr_op ++) {
   if (! pfr_create_kentry_counter(&ke->pfrke_counters,
       pfr_dir, pfr_op)) {
    pfr_destroy_kentry(ke);
    return (((void*)0));
   }
  }
 return (ke);
}
