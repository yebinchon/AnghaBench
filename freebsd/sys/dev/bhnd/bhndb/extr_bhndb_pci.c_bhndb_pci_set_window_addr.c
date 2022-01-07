
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_regwin {int dummy; } ;
struct bhndb_pci_softc {int (* set_regwin ) (int ,int ,struct bhndb_regwin const*,int ) ;int parent; int dev; } ;
typedef int device_t ;
typedef int bhnd_addr_t ;


 struct bhndb_pci_softc* device_get_softc (int ) ;
 int stub1 (int ,int ,struct bhndb_regwin const*,int ) ;

__attribute__((used)) static int
bhndb_pci_set_window_addr(device_t dev, const struct bhndb_regwin *rw,
    bhnd_addr_t addr)
{
 struct bhndb_pci_softc *sc = device_get_softc(dev);
 return (sc->set_regwin(sc->dev, sc->parent, rw, addr));
}
