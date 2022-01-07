
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plic_softc {size_t ndev; TYPE_1__* isrcs; } ;
struct intr_map_data_fdt {int ncells; size_t* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct plic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
plic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct intr_map_data_fdt *daf;
 struct plic_softc *sc;

 sc = device_get_softc(dev);

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 daf = (struct intr_map_data_fdt *)data;
 if (daf->ncells != 1 || daf->cells[0] > sc->ndev)
  return (EINVAL);

 *isrcp = &sc->isrcs[daf->cells[0]].isrc;

 return (0);
}
