
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int ifnet; } ;
typedef int device_t ;


 struct sfxge_softc* device_get_softc (int ) ;
 int sfxge_destroy (struct sfxge_softc*) ;
 int sfxge_ifnet_fini (int ) ;
 int sfxge_vpd_fini (struct sfxge_softc*) ;

__attribute__((used)) static int
sfxge_detach(device_t dev)
{
 struct sfxge_softc *sc;

 sc = device_get_softc(dev);

 sfxge_vpd_fini(sc);


 sfxge_ifnet_fini(sc->ifnet);


 sfxge_destroy(sc);

 return (0);
}
