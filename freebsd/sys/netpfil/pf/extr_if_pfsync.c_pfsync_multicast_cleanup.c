
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int * imo_multicast_ifp; int imo_head; } ;
struct pfsync_softc {struct ip_moptions sc_imo; } ;
struct in_mfilter {int imf_inm; } ;


 int in_leavegroup (int ,int *) ;
 struct in_mfilter* ip_mfilter_first (int *) ;
 int ip_mfilter_free (struct in_mfilter*) ;
 int ip_mfilter_remove (int *,struct in_mfilter*) ;

__attribute__((used)) static void
pfsync_multicast_cleanup(struct pfsync_softc *sc)
{
 struct ip_moptions *imo = &sc->sc_imo;
 struct in_mfilter *imf;

 while ((imf = ip_mfilter_first(&imo->imo_head)) != ((void*)0)) {
  ip_mfilter_remove(&imo->imo_head, imf);
  in_leavegroup(imf->imf_inm, ((void*)0));
  ip_mfilter_free(imf);
 }
 imo->imo_multicast_ifp = ((void*)0);
}
