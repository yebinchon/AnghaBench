
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
struct beripic_softc {scalar_t__ nirqs; TYPE_1__* irqs; } ;
typedef int device_t ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 int EINVAL ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct beripic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
beri_pic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct beripic_softc *sc;
 struct intr_map_data_fdt *daf;
 uint32_t irq;

 sc = device_get_softc(dev);
 daf = (struct intr_map_data_fdt *)data;

 if (data == ((void*)0) || data->type != INTR_MAP_DATA_FDT ||
     daf->ncells != 1 || daf->cells[0] >= sc->nirqs)
  return (EINVAL);

 irq = daf->cells[0];

 *isrcp = &sc->irqs[irq].isrc;

 return (0);
}
