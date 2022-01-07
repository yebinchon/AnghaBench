
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_vp_adapter {scalar_t__ na_bdg; } ;
struct netmap_adapter {scalar_t__ active_fds; int na_flags; } ;


 int BDG_WLOCK (scalar_t__) ;
 int BDG_WUNLOCK (scalar_t__) ;
 int NAF_NETMAP_ON ;
 int netmap_krings_mode_commit (struct netmap_adapter*,int) ;

int
netmap_vp_reg(struct netmap_adapter *na, int onoff)
{
 struct netmap_vp_adapter *vpna =
  (struct netmap_vp_adapter*)na;




 if (vpna->na_bdg)
  BDG_WLOCK(vpna->na_bdg);
 if (onoff) {
  netmap_krings_mode_commit(na, onoff);
  if (na->active_fds == 0)
   na->na_flags |= NAF_NETMAP_ON;



 } else {
  if (na->active_fds == 0)
   na->na_flags &= ~NAF_NETMAP_ON;
  netmap_krings_mode_commit(na, onoff);
 }
 if (vpna->na_bdg)
  BDG_WUNLOCK(vpna->na_bdg);
 return 0;
}
