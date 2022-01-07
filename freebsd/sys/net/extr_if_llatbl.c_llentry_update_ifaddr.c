
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct lltable {int llt_af; } ;
struct llentry {int la_flags; int r_linkdata; int * ll_addr; } ;
struct ifnet {int dummy; } ;
typedef int linkhdr ;


 int * IF_LLADDR (struct ifnet*) ;
 int LLE_IFADDR ;
 int LLE_MAX_LINKHDR ;
 int LLE_VALID ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 int lltable_calc_llheader (struct ifnet*,int ,int *,int *,size_t*,int*) ;
 int memcpy (int ,int *,size_t) ;

__attribute__((used)) static int
llentry_update_ifaddr(struct lltable *llt, struct llentry *lle, void *farg)
{
 struct ifnet *ifp;
 u_char linkhdr[LLE_MAX_LINKHDR];
 size_t linkhdrsize;
 u_char *lladdr;
 int lladdr_off;

 ifp = (struct ifnet *)farg;

 lladdr = lle->ll_addr;

 LLE_WLOCK(lle);
 if ((lle->la_flags & LLE_VALID) == 0) {
  LLE_WUNLOCK(lle);
  return (0);
 }

 if ((lle->la_flags & LLE_IFADDR) != 0)
  lladdr = IF_LLADDR(ifp);

 linkhdrsize = sizeof(linkhdr);
 lltable_calc_llheader(ifp, llt->llt_af, lladdr, linkhdr, &linkhdrsize,
     &lladdr_off);
 memcpy(lle->r_linkdata, linkhdr, linkhdrsize);
 LLE_WUNLOCK(lle);

 return (0);
}
