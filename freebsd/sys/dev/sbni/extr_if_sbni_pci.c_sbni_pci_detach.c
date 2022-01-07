
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {scalar_t__ slave_sc; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct sbni_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;
 int sbni_detach (struct sbni_softc*) ;
 int sbni_release_resources (struct sbni_softc*) ;

__attribute__((used)) static int
sbni_pci_detach(device_t dev)
{
 struct sbni_softc *sc;

 sc = device_get_softc(dev);
 sbni_detach(sc);
 if (sc->slave_sc)
  sbni_detach(sc);

 sbni_release_resources(sc);
 if (sc->slave_sc)
  free(sc->slave_sc, M_DEVBUF);
 return (0);
}
