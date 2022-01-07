
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {scalar_t__ cardok; } ;
typedef int device_t ;


 int CBB_SOCKET_MASK ;
 int bus_generic_suspend (int ) ;
 int cbb_set (struct cbb_softc*,int ,int ) ;
 struct cbb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cbb_pci_suspend(device_t brdev)
{
 int error = 0;
 struct cbb_softc *sc = device_get_softc(brdev);

 error = bus_generic_suspend(brdev);
 if (error != 0)
  return (error);
 cbb_set(sc, CBB_SOCKET_MASK, 0);
 sc->cardok = 0;
 return (0);
}
