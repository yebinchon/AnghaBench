
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct resource {int dummy; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_4__ core; } ;
struct bhndb_regwin {scalar_t__ win_offset; TYPE_5__ d; } ;
struct TYPE_8__ {TYPE_2__* bus_res; } ;
struct bhndb_pci_softc {int dev; TYPE_3__ bhndb; int pci_devclass; } ;
typedef scalar_t__ bus_size_t ;
struct TYPE_7__ {int res; TYPE_1__* cfg; } ;
struct TYPE_6__ {int register_windows; } ;


 int BHND_PORT_DEVICE ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 struct resource* bhndb_host_resource_for_regwin (int ,struct bhndb_regwin const*) ;
 struct bhndb_regwin* bhndb_regwin_find_core (int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bhndb_pci_get_core_regs(struct bhndb_pci_softc *sc, bus_size_t offset,
    bus_size_t size, struct resource **res, bus_size_t *res_offset)
{
 const struct bhndb_regwin *win;
 struct resource *r;


 win = bhndb_regwin_find_core(sc->bhndb.bus_res->cfg->register_windows,
     sc->pci_devclass, 0, BHND_PORT_DEVICE, 0, 0, offset, size);
 if (win == ((void*)0)) {
  device_printf(sc->dev, "missing PCI core register window\n");
  return (ENXIO);
 }


 r = bhndb_host_resource_for_regwin(sc->bhndb.bus_res->res, win);
 if (r == ((void*)0)) {
  device_printf(sc->dev, "missing PCI core register resource\n");
  return (ENXIO);
 }

 KASSERT(offset >= win->d.core.offset, ("offset %#jx outside of "
     "register window", (uintmax_t)offset));

 *res = r;
 *res_offset = win->win_offset + (offset - win->d.core.offset);

 return (0);
}
