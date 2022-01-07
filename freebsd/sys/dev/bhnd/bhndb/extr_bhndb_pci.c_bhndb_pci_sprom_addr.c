
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct bhndb_regwin {scalar_t__ win_offset; } ;
struct TYPE_4__ {TYPE_1__* bus_res; } ;
struct bhndb_pci_softc {TYPE_2__ bhndb; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_3__ {int res; } ;


 int KASSERT (int ,char*) ;
 struct resource* bhndb_host_resource_for_regwin (int ,struct bhndb_regwin const*) ;
 struct bhndb_regwin* bhndb_pci_sprom_regwin (struct bhndb_pci_softc*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static bus_addr_t
bhndb_pci_sprom_addr(struct bhndb_pci_softc *sc)
{
 const struct bhndb_regwin *sprom_win;
 struct resource *r;


 sprom_win = bhndb_pci_sprom_regwin(sc);
 KASSERT(sprom_win != ((void*)0), ("requested sprom address on PCI_V2+"));


 r = bhndb_host_resource_for_regwin(sc->bhndb.bus_res->res, sprom_win);
 KASSERT(r != ((void*)0), ("missing resource for sprom window\n"));

 return (rman_get_start(r) + sprom_win->win_offset);
}
