
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_ktable {int pfrkt_cnt; } ;
struct TYPE_2__ {long pfrkc_tzero; } ;
struct pfr_kentry {TYPE_1__ pfrke_counters; } ;
struct pfr_addr {int dummy; } ;


 int ENOMEM ;
 struct pfr_kentry* pfr_create_kentry (struct pfr_addr*) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int) ;
 int pfr_route_kentry (struct pfr_ktable*,struct pfr_kentry*) ;

int
pfr_insert_kentry(struct pfr_ktable *kt, struct pfr_addr *ad, long tzero)
{
 struct pfr_kentry *p;
 int rv;

 p = pfr_lookup_addr(kt, ad, 1);
 if (p != ((void*)0))
  return (0);
 p = pfr_create_kentry(ad);
 if (p == ((void*)0))
  return (ENOMEM);

 rv = pfr_route_kentry(kt, p);
 if (rv)
  return (rv);

 p->pfrke_counters.pfrkc_tzero = tzero;
 kt->pfrkt_cnt++;

 return (0);
}
