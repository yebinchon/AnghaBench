
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct dwc_softc {scalar_t__ stats_harvest_count; struct ifnet* ifp; } ;


 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IMCASTS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 scalar_t__ READ4 (struct dwc_softc*,int ) ;
 int RXALIGNMENTERROR ;
 int RXCRCERROR ;
 int RXFRAMECOUNT_GB ;
 int RXJABBERERROR ;
 int RXLENGTHERROR ;
 int RXMULTICASTFRAMES_G ;
 int RXOVERSIZE_G ;
 int RXRUNTERROR ;
 int RXUNDERSIZE_G ;
 scalar_t__ STATS_HARVEST_INTERVAL ;
 int TXCARRIERERR ;
 int TXEXCESSDEF ;
 int TXEXESSCOL ;
 int TXFRAMECOUNT_G ;
 int TXLATECOL ;
 int TXMULTICASTFRAMES_G ;
 int TXOVERSIZE_G ;
 int TXUNDERFLOWERROR ;
 int dwc_clear_stats (struct dwc_softc*) ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
dwc_harvest_stats(struct dwc_softc *sc)
{
 struct ifnet *ifp;


 if (++sc->stats_harvest_count < STATS_HARVEST_INTERVAL)
  return;

 sc->stats_harvest_count = 0;
 ifp = sc->ifp;

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, READ4(sc, RXFRAMECOUNT_GB));
 if_inc_counter(ifp, IFCOUNTER_IMCASTS, READ4(sc, RXMULTICASTFRAMES_G));
 if_inc_counter(ifp, IFCOUNTER_IERRORS,
     READ4(sc, RXOVERSIZE_G) + READ4(sc, RXUNDERSIZE_G) +
     READ4(sc, RXCRCERROR) + READ4(sc, RXALIGNMENTERROR) +
     READ4(sc, RXRUNTERROR) + READ4(sc, RXJABBERERROR) +
     READ4(sc, RXLENGTHERROR));

 if_inc_counter(ifp, IFCOUNTER_OPACKETS, READ4(sc, TXFRAMECOUNT_G));
 if_inc_counter(ifp, IFCOUNTER_OMCASTS, READ4(sc, TXMULTICASTFRAMES_G));
 if_inc_counter(ifp, IFCOUNTER_OERRORS,
     READ4(sc, TXOVERSIZE_G) + READ4(sc, TXEXCESSDEF) +
     READ4(sc, TXCARRIERERR) + READ4(sc, TXUNDERFLOWERROR));

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
     READ4(sc, TXEXESSCOL) + READ4(sc, TXLATECOL));

 dwc_clear_stats(sc);
}
