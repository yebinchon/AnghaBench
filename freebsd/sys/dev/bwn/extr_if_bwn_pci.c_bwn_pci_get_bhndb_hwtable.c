
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_pci_softc {TYPE_1__* devcfg; } ;
struct bhndb_hw {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct bhndb_hw const* bridge_hwtable; } ;


 struct bwn_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static const struct bhndb_hw *
bwn_pci_get_bhndb_hwtable(device_t dev, device_t child)
{
 struct bwn_pci_softc *sc = device_get_softc(dev);
 return (sc->devcfg->bridge_hwtable);
}
