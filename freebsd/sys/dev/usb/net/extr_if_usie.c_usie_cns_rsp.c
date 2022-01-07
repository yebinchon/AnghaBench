
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_rssi; int sc_dev; struct ifnet* sc_ifp; } ;
struct usie_cns {int id; int obj; } ;
struct ifnet {int if_drv_flags; int if_flags; } ;
typedef int int16_t ;


 int DPRINTF (char*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int USIE_CNS_ID_INIT ;
 int USIE_CNS_ID_STOP ;




 int be16toh (int ) ;
 int be32toh (int ) ;
 int device_printf (int ,char*,...) ;
 int usie_if_sync_to (struct usie_softc*) ;

__attribute__((used)) static void
usie_cns_rsp(struct usie_softc *sc, struct usie_cns *cns)
{
 struct ifnet *ifp = sc->sc_ifp;

 DPRINTF("received CnS\n");

 switch (be16toh(cns->obj)) {
 case 131:
  if (be32toh(cns->id) & USIE_CNS_ID_INIT)
   usie_if_sync_to(sc);
  else if (be32toh(cns->id) & USIE_CNS_ID_STOP) {
   ifp->if_flags &= ~IFF_UP;
   ifp->if_drv_flags &=
       ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
  } else
   DPRINTF("undefined link update\n");
  break;

 case 128:
  sc->sc_rssi = be16toh(*(int16_t *)(cns + 1));
  if (sc->sc_rssi <= 0)
   device_printf(sc->sc_dev, "No signal\n");
  else {
   device_printf(sc->sc_dev, "RSSI=%ddBm\n",
       sc->sc_rssi - 110);
  }
  break;

 case 129:
  break;

 case 130:
  break;

 default:
  DPRINTF("undefined CnS\n");
  break;
 }
}
