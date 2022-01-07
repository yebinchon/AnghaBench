
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq {int rid; int tag; int * res; } ;
struct adapter {int dev; } ;
typedef int driver_intr_t ;


 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_describe_intr (int ,int *,int ,char*,char*) ;
 int bus_setup_intr (int ,int *,int,int *,int *,void*,int *) ;
 int device_printf (int ,char*,int,char*,...) ;

__attribute__((used)) static int
t4_alloc_irq(struct adapter *sc, struct irq *irq, int rid,
    driver_intr_t *handler, void *arg, char *name)
{
 int rc;

 irq->rid = rid;
 irq->res = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &irq->rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (irq->res == ((void*)0)) {
  device_printf(sc->dev,
      "failed to allocate IRQ for rid %d, name %s.\n", rid, name);
  return (ENOMEM);
 }

 rc = bus_setup_intr(sc->dev, irq->res, INTR_MPSAFE | INTR_TYPE_NET,
     ((void*)0), handler, arg, &irq->tag);
 if (rc != 0) {
  device_printf(sc->dev,
      "failed to setup interrupt for rid %d, name %s: %d\n",
      rid, name, rc);
 } else if (name)
  bus_describe_intr(sc->dev, irq->res, irq->tag, "%s", name);

 return (rc);
}
