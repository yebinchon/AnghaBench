
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct beripic_softc {int nirqs; int mips_hard_irq_idx; int * ih; TYPE_2__* hirq; int * res; int dev; TYPE_1__* irqs; } ;
struct beri_pic_isrc {scalar_t__ mips_hard_irq; } ;
typedef int device_t ;
struct TYPE_4__ {int irq; struct beripic_softc* sc; } ;
struct TYPE_3__ {int irq; struct intr_irqsrc isrc; } ;


 size_t BP_CFG ;
 int BP_NUM_HARD_IRQS ;
 int BP_NUM_IRQS ;
 int ENXIO ;
 int INTR_TYPE_CLK ;
 intptr_t OF_xref_from_node (int ) ;
 int beri_pic_intr ;
 int beri_pic_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int ,int *,TYPE_2__*,int ) ;
 int bus_write_8 (int ,int,int ) ;
 char* device_get_nameunit (int ) ;
 struct beripic_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int intr_isrc_register (struct intr_irqsrc*,int ,int ,char*,int ,int) ;
 int intr_pic_deregister (int ,intptr_t) ;
 int * intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
beripic_attach(device_t dev)
{
 struct beripic_softc *sc;
 struct beri_pic_isrc *pic_isrc;
 const char *name;
 struct intr_irqsrc *isrc;
 intptr_t xref;
 uint32_t unit;
 int err;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, beri_pic_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 xref = OF_xref_from_node(ofw_bus_get_node(dev));
 name = device_get_nameunit(dev);
 unit = device_get_unit(dev);
 sc->nirqs = BP_NUM_IRQS;

 for (i = 0; i < sc->nirqs; i++) {
  sc->irqs[i].irq = i;
  isrc = &sc->irqs[i].isrc;


  pic_isrc = (struct beri_pic_isrc *)isrc;
  pic_isrc->mips_hard_irq = sc->mips_hard_irq_idx++;

  if (sc->mips_hard_irq_idx >= (BP_NUM_HARD_IRQS - 1)) {
   sc->mips_hard_irq_idx = 0;
  }

  err = intr_isrc_register(isrc, sc->dev,
      0, "pic%d,%d", unit, i);
  bus_write_8(sc->res[BP_CFG], i * 8, 0);
 }





 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "could not register PIC\n");
  return (ENXIO);
 }


 for (i = 0; i < (BP_NUM_HARD_IRQS - 1); i++) {
  sc->hirq[i].sc = sc;
  sc->hirq[i].irq = i;
  if (bus_setup_intr(dev, sc->res[4+i], INTR_TYPE_CLK,
      beri_pic_intr, ((void*)0), &sc->hirq[i], sc->ih[i])) {
   device_printf(dev, "could not setup irq handler\n");
   intr_pic_deregister(dev, xref);
   return (ENXIO);
  }
 }

 return (0);
}
