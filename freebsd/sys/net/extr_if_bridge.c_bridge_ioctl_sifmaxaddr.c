
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbreq {int ifbr_addrmax; int ifbr_ifsname; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_addrmax; } ;


 int ENOENT ;
 struct bridge_iflist* bridge_lookup_member (struct bridge_softc*,int ) ;

__attribute__((used)) static int
bridge_ioctl_sifmaxaddr(struct bridge_softc *sc, void *arg)
{
 struct ifbreq *req = arg;
 struct bridge_iflist *bif;

 bif = bridge_lookup_member(sc, req->ifbr_ifsname);
 if (bif == ((void*)0))
  return (ENOENT);

 bif->bif_addrmax = req->ifbr_addrmax;
 return (0);
}
