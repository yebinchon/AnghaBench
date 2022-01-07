
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_pci_softc {struct bhndb_intr_isrc* isrc; } ;
struct bhndb_intr_isrc {int dummy; } ;
typedef int device_t ;


 struct bhndb_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_pci_map_intr_isrc(device_t dev, struct resource *irq,
    struct bhndb_intr_isrc **isrc)
{
 struct bhndb_pci_softc *sc = device_get_softc(dev);


 *isrc = sc->isrc;
 return (0);
}
