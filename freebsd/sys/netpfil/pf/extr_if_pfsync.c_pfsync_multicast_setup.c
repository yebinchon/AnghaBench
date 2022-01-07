
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int imo_multicast_vif; scalar_t__ imo_multicast_loop; int imo_multicast_ttl; struct ifnet* imo_multicast_ifp; int imo_head; } ;
struct pfsync_softc {int sc_sync_peer; struct ip_moptions sc_imo; } ;
struct in_mfilter {int imf_inm; } ;
struct ifnet {int if_flags; } ;


 int EADDRNOTAVAIL ;
 int IFF_MULTICAST ;
 int PFSYNC_DFLTTL ;
 int in_joingroup (struct ifnet*,int *,int *,int *) ;
 int ip_mfilter_init (int *) ;
 int ip_mfilter_insert (int *,struct in_mfilter*) ;

__attribute__((used)) static int
pfsync_multicast_setup(struct pfsync_softc *sc, struct ifnet *ifp,
    struct in_mfilter *imf)
{
 struct ip_moptions *imo = &sc->sc_imo;
 int error;

 if (!(ifp->if_flags & IFF_MULTICAST))
  return (EADDRNOTAVAIL);

 imo->imo_multicast_vif = -1;

 if ((error = in_joingroup(ifp, &sc->sc_sync_peer, ((void*)0),
     &imf->imf_inm)) != 0)
  return (error);

 ip_mfilter_init(&imo->imo_head);
 ip_mfilter_insert(&imo->imo_head, imf);
 imo->imo_multicast_ifp = ifp;
 imo->imo_multicast_ttl = PFSYNC_DFLTTL;
 imo->imo_multicast_loop = 0;

 return (0);
}
