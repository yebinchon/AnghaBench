
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_path_cost; int ifbr_ifsname; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_stp; } ;


 int ENOENT ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;
 int bstp_set_path_cost (int *,int ) ;

__attribute__((used)) static int
bridge_ioctl_sifcost(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;
 struct bridge_iflist *bif;

 bif = bridge_lookup_member(sc, req->ifbr_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 return (bstp_set_path_cost(&bif->bif_stp, req->ifbr_path_cost));
}
