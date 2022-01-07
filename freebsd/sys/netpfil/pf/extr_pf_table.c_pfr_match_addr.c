
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in6 {int sin_len; int sin_family; int sin6_len; int sin6_family; int sin6_addr; TYPE_1__ sin_addr; } ;
struct sockaddr_in {int sin_len; int sin_family; int sin6_len; int sin6_family; int sin6_addr; TYPE_1__ sin_addr; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_nomatch; int pfrkt_match; TYPE_3__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; struct pfr_ktable* pfrkt_root; } ;
struct pfr_kentry {int pfrke_not; } ;
struct pf_addr {int * addr32; } ;
typedef int sin6 ;
typedef int sin ;
typedef int sa_family_t ;
struct TYPE_6__ {int rh; } ;
struct TYPE_5__ {int rh; } ;




 int KENTRY_RNF_ROOT (struct pfr_kentry*) ;
 int PFR_TFLAG_ACTIVE ;
 int PF_RULES_RASSERT () ;
 int bcopy (struct pf_addr*,int *,int) ;
 int bzero (struct sockaddr_in6*,int) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ rn_match (struct sockaddr_in6*,int *) ;

int
pfr_match_addr(struct pfr_ktable *kt, struct pf_addr *a, sa_family_t af)
{
 struct pfr_kentry *ke = ((void*)0);
 int match;

 PF_RULES_RASSERT();

 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != ((void*)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (0);

 switch (af) {
 }
 match = (ke && !ke->pfrke_not);
 if (match)
  counter_u64_add(kt->pfrkt_match, 1);
 else
  counter_u64_add(kt->pfrkt_nomatch, 1);
 return (match);
}
