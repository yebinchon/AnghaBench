
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dev; struct ifnet* ifnet; int enp; int init_state; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int DBGPRINT (int ,char*,...) ;
 int ENOMEM ;
 int IFT_ETHER ;
 int SFXGE_REGISTERED ;
 struct sfxge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int efx_nic_fini (int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_free (struct ifnet*) ;
 int sfxge_create (struct sfxge_softc*) ;
 int sfxge_destroy (struct sfxge_softc*) ;
 int sfxge_ifnet_fini (struct ifnet*) ;
 int sfxge_ifnet_init (struct ifnet*,struct sfxge_softc*) ;
 int sfxge_vpd_init (struct sfxge_softc*) ;

__attribute__((used)) static int
sfxge_attach(device_t dev)
{
 struct sfxge_softc *sc;
 struct ifnet *ifp;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;


 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "Couldn't allocate ifnet\n");
  error = ENOMEM;
  goto fail;
 }
 sc->ifnet = ifp;


 DBGPRINT(sc->dev, "create nic");
 if ((error = sfxge_create(sc)) != 0)
  goto fail2;


 DBGPRINT(sc->dev, "init ifnet");
 if ((error = sfxge_ifnet_init(ifp, sc)) != 0)
  goto fail3;

 DBGPRINT(sc->dev, "init vpd");
 if ((error = sfxge_vpd_init(sc)) != 0)
  goto fail4;






 efx_nic_fini(sc->enp);

 sc->init_state = SFXGE_REGISTERED;

 DBGPRINT(sc->dev, "success");
 return (0);

fail4:
 sfxge_ifnet_fini(ifp);
fail3:
 efx_nic_fini(sc->enp);
 sfxge_destroy(sc);

fail2:
 if_free(sc->ifnet);

fail:
 DBGPRINT(sc->dev, "failed %d", error);
 return (error);
}
