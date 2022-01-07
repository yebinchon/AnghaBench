
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pci_softc {int bhndb_dev; int quirks; int devcfg; int dev; } ;
struct bwn_pci_device {int quirks; } ;
typedef int device_t ;


 int ENXIO ;
 int bhndb_attach_bridge (int ,int *,int) ;
 scalar_t__ bwn_pci_find_devcfg (int ,int *,struct bwn_pci_device const**) ;
 struct bwn_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bwn_pci_attach(device_t dev)
{
 struct bwn_pci_softc *sc;
 const struct bwn_pci_device *ident;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;


 if (bwn_pci_find_devcfg(dev, &sc->devcfg, &ident))
  return (ENXIO);


 sc->quirks = ident->quirks;


 if ((error = bhndb_attach_bridge(dev, &sc->bhndb_dev, -1)))
  return (ENXIO);


 return (0);
}
