
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_pci_softc {int dev; } ;
typedef int device_t ;


 int bhndb_disable_pci_clocks (int ) ;
 int bhndb_generic_suspend (int ) ;
 struct bhndb_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_pci_suspend(device_t dev)
{
 struct bhndb_pci_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bhndb_disable_pci_clocks(sc->dev)))
  return (error);


 return (bhndb_generic_suspend(dev));
}
