
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rib_head {int head; int (* rnh_walktree ) (int *,int ,struct if_mtuinfo*) ;} ;
struct ifnet {int dummy; } ;
struct if_mtuinfo {int mtu; struct ifnet* ifp; } ;


 int AF_MAX ;
 int RIB_WLOCK (struct rib_head*) ;
 int RIB_WUNLOCK (struct rib_head*) ;
 int if_getmtu_family (struct ifnet*,int) ;
 int if_updatemtu_cb ;
 int rt_numfibs ;
 struct rib_head* rt_tables_get_rnh (int,int) ;
 int stub1 (int *,int ,struct if_mtuinfo*) ;

void
rt_updatemtu(struct ifnet *ifp)
{
 struct if_mtuinfo ifmtu;
 struct rib_head *rnh;
 int i, j;

 ifmtu.ifp = ifp;






 for (i = 1; i <= AF_MAX; i++) {
  ifmtu.mtu = if_getmtu_family(ifp, i);
  for (j = 0; j < rt_numfibs; j++) {
   rnh = rt_tables_get_rnh(j, i);
   if (rnh == ((void*)0))
    continue;
   RIB_WLOCK(rnh);
   rnh->rnh_walktree(&rnh->head, if_updatemtu_cb, &ifmtu);
   RIB_WUNLOCK(rnh);
  }
 }
}
