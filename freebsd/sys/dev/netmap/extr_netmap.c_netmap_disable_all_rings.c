
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int NA (struct ifnet*) ;
 int NM_KR_STOPPED ;
 scalar_t__ NM_NA_VALID (struct ifnet*) ;
 int netmap_set_all_rings (int ,int ) ;

void
netmap_disable_all_rings(struct ifnet *ifp)
{
 if (NM_NA_VALID(ifp)) {
  netmap_set_all_rings(NA(ifp), NM_KR_STOPPED);
 }
}
