
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_6__ {TYPE_2__* qs; } ;
struct TYPE_7__ {int flags; int irq_rid; void* intr_tag; int msi_count; int* msix_irq_rid; int dev; void** msix_intr_tag; struct resource** msix_irq_res; TYPE_1__ sge; struct resource* irq_res; int cxgb_intr; } ;
typedef TYPE_2__ adapter_t ;


 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int USING_MSI ;
 int USING_MSIX ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_describe_intr (int ,struct resource*,void*,char*,...) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_setup_intr (int ,struct resource*,int,int *,int ,TYPE_2__*,void**) ;
 int cxgb_teardown_interrupts (TYPE_2__*) ;
 int device_printf (int ,char*,int,...) ;
 int t3_intr_msix ;

__attribute__((used)) static int
cxgb_setup_interrupts(adapter_t *sc)
{
 struct resource *res;
 void *tag;
 int i, rid, err, intr_flag = sc->flags & (USING_MSI | USING_MSIX);

 sc->irq_rid = intr_flag ? 1 : 0;
 sc->irq_res = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &sc->irq_rid,
          RF_SHAREABLE | RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(sc->dev, "Cannot allocate interrupt (%x, %u)\n",
         intr_flag, sc->irq_rid);
  err = EINVAL;
  sc->irq_rid = 0;
 } else {
  err = bus_setup_intr(sc->dev, sc->irq_res,
      INTR_MPSAFE | INTR_TYPE_NET, ((void*)0),
      sc->cxgb_intr, sc, &sc->intr_tag);

  if (err) {
   device_printf(sc->dev,
          "Cannot set up interrupt (%x, %u, %d)\n",
          intr_flag, sc->irq_rid, err);
   bus_release_resource(sc->dev, SYS_RES_IRQ, sc->irq_rid,
          sc->irq_res);
   sc->irq_res = sc->intr_tag = ((void*)0);
   sc->irq_rid = 0;
  }
 }


 if (!(intr_flag & USING_MSIX) || err)
  return (err);

 bus_describe_intr(sc->dev, sc->irq_res, sc->intr_tag, "err");
 for (i = 0; i < sc->msi_count - 1; i++) {
  rid = i + 2;
  res = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &rid,
          RF_SHAREABLE | RF_ACTIVE);
  if (res == ((void*)0)) {
   device_printf(sc->dev, "Cannot allocate interrupt "
          "for message %d\n", rid);
   err = EINVAL;
   break;
  }

  err = bus_setup_intr(sc->dev, res, INTR_MPSAFE | INTR_TYPE_NET,
         ((void*)0), t3_intr_msix, &sc->sge.qs[i], &tag);
  if (err) {
   device_printf(sc->dev, "Cannot set up interrupt "
          "for message %d (%d)\n", rid, err);
   bus_release_resource(sc->dev, SYS_RES_IRQ, rid, res);
   break;
  }

  sc->msix_irq_rid[i] = rid;
  sc->msix_irq_res[i] = res;
  sc->msix_intr_tag[i] = tag;
  bus_describe_intr(sc->dev, res, tag, "qs%d", i);
 }

 if (err)
  cxgb_teardown_interrupts(sc);

 return (err);
}
