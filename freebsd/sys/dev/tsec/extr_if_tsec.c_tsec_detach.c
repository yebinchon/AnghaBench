
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tsec_softc {TYPE_1__* tsec_ifp; int dev; scalar_t__ sc_rres; } ;
struct TYPE_4__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int ether_ifdetach (TYPE_1__*) ;
 int ether_poll_deregister (TYPE_1__*) ;
 int if_free (TYPE_1__*) ;
 int tsec_free_dma (struct tsec_softc*) ;
 int tsec_shutdown (int ) ;

int
tsec_detach(struct tsec_softc *sc)
{

 if (sc->tsec_ifp != ((void*)0)) {






  if (sc->sc_rres)
   tsec_shutdown(sc->dev);


  ether_ifdetach(sc->tsec_ifp);
  if_free(sc->tsec_ifp);
  sc->tsec_ifp = ((void*)0);
 }


 tsec_free_dma(sc);

 return (0);
}
