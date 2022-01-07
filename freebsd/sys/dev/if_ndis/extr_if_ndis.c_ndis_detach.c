
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_softc {scalar_t__ ndis_iftype; int ndis_parent_tag; int * ndis_txpool; int ifmedia; scalar_t__ ndis_80211; scalar_t__ ndis_txarray; scalar_t__ ndis_sc; scalar_t__ ndis_res_altmem; int ndis_altmem_rid; scalar_t__ ndis_res_mem; int ndis_mem_rid; scalar_t__ ndis_res_io; int ndis_io_rid; scalar_t__ ndis_irq; int * ndisusb_taskitem; int * ndisusb_xferdoneitem; int * ndis_inputitem; int * ndis_resetitem; int * ndis_startitem; int * ndis_tickitem; int ndis_ic; struct ifnet* ifp; } ;
struct ifnet {int if_flags; } ;
typedef int driver_object ;
typedef int device_t ;


 int IFF_UP ;
 int IoFreeWorkItem (int *) ;
 int M_DEVBUF ;
 int NDIS_LOCK (struct ndis_softc*) ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 int NdisFreePacketPool (int *) ;
 scalar_t__ PCIBus ;
 scalar_t__ PCMCIABus ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct ndis_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int free (scalar_t__,int ) ;
 int ieee80211_ifdetach (int *) ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int ndis_destroy_dma (struct ndis_softc*) ;
 int ndis_stop (struct ndis_softc*) ;
 int ndis_unload_driver (struct ndis_softc*) ;
 int panic (char*) ;
 int windrv_destroy_pdo (int *,int ) ;
 int * windrv_lookup (int ,char*) ;

int
ndis_detach(device_t dev)
{
 struct ifnet *ifp;
 struct ndis_softc *sc;
 driver_object *drv;

 sc = device_get_softc(dev);
 NDIS_LOCK(sc);
 if (!sc->ndis_80211)
  ifp = sc->ifp;
 else
  ifp = ((void*)0);
 if (ifp != ((void*)0))
  ifp->if_flags &= ~IFF_UP;
 if (device_is_attached(dev)) {
  NDIS_UNLOCK(sc);
  ndis_stop(sc);
  if (sc->ndis_80211)
   ieee80211_ifdetach(&sc->ndis_ic);
  else if (ifp != ((void*)0))
   ether_ifdetach(ifp);
 } else
  NDIS_UNLOCK(sc);

 if (sc->ndis_tickitem != ((void*)0))
  IoFreeWorkItem(sc->ndis_tickitem);
 if (sc->ndis_startitem != ((void*)0))
  IoFreeWorkItem(sc->ndis_startitem);
 if (sc->ndis_resetitem != ((void*)0))
  IoFreeWorkItem(sc->ndis_resetitem);
 if (sc->ndis_inputitem != ((void*)0))
  IoFreeWorkItem(sc->ndis_inputitem);
 if (sc->ndisusb_xferdoneitem != ((void*)0))
  IoFreeWorkItem(sc->ndisusb_xferdoneitem);
 if (sc->ndisusb_taskitem != ((void*)0))
  IoFreeWorkItem(sc->ndisusb_taskitem);

 bus_generic_detach(dev);
 ndis_unload_driver(sc);

 if (sc->ndis_irq)
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->ndis_irq);
 if (sc->ndis_res_io)
  bus_release_resource(dev, SYS_RES_IOPORT,
      sc->ndis_io_rid, sc->ndis_res_io);
 if (sc->ndis_res_mem)
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->ndis_mem_rid, sc->ndis_res_mem);
 if (sc->ndis_res_altmem)
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->ndis_altmem_rid, sc->ndis_res_altmem);

 if (ifp != ((void*)0))
  if_free(ifp);

 if (sc->ndis_sc)
  ndis_destroy_dma(sc);

 if (sc->ndis_txarray)
  free(sc->ndis_txarray, M_DEVBUF);

 if (!sc->ndis_80211)
  ifmedia_removeall(&sc->ifmedia);

 if (sc->ndis_txpool != ((void*)0))
  NdisFreePacketPool(sc->ndis_txpool);



 if (sc->ndis_iftype == PCIBus)
  drv = windrv_lookup(0, "PCI Bus");
 else if (sc->ndis_iftype == PCMCIABus)
  drv = windrv_lookup(0, "PCCARD Bus");
 else
  drv = windrv_lookup(0, "USB Bus");
 if (drv == ((void*)0))
  panic("couldn't find driver object");
 windrv_destroy_pdo(drv, dev);

 if (sc->ndis_iftype == PCIBus)
  bus_dma_tag_destroy(sc->ndis_parent_tag);

 return (0);
}
