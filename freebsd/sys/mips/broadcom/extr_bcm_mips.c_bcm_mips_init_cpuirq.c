
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct resource {int dummy; } ;
struct bcm_mips_softc {int dev; } ;
struct bcm_mips_cpuirq {int irq_rid; scalar_t__ refs; int * isrc_solo; void* irq_cookie; struct resource* irq_res; scalar_t__ mips_irq; struct bcm_mips_softc* sc; } ;
typedef int driver_filter_t ;


 int BCM_MIPS_LOCK (struct bcm_mips_softc*) ;
 int BCM_MIPS_UNLOCK (struct bcm_mips_softc*) ;
 int EINVAL ;
 int ENXIO ;
 int INTR_EXCL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int KASSERT (int ,char*) ;
 scalar_t__ NHARD_IRQS ;
 scalar_t__ NSOFT_IRQS ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_resource (int ,int ,int,scalar_t__,int) ;
 int bus_setup_intr (int ,struct resource*,int,int ,int *,struct bcm_mips_cpuirq*,void**) ;
 int device_printf (int ,char*,scalar_t__,...) ;
 int printf (char*,int) ;

__attribute__((used)) static int
bcm_mips_init_cpuirq(struct bcm_mips_softc *sc, struct bcm_mips_cpuirq *cpuirq,
    int rid, u_int irq, driver_filter_t filter)
{
 struct resource *res;
 void *cookie;
 u_int irq_real;
 int error;


 if (irq >= NHARD_IRQS)
  return (EINVAL);


 irq_real = irq + NSOFT_IRQS;


 BCM_MIPS_LOCK(sc);

 KASSERT(cpuirq->sc == ((void*)0), ("cpuirq already initialized"));

 error = bus_set_resource(sc->dev, SYS_RES_IRQ, rid, irq_real, 1);
 if (error) {
  BCM_MIPS_UNLOCK(sc);
  device_printf(sc->dev, "failed to assign interrupt %u: "
      "%d\n", irq, error);
  return (error);
 }

 res = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  BCM_MIPS_UNLOCK(sc);
  device_printf(sc->dev, "failed to allocate interrupt "
   "%u resource\n", irq);
  bus_delete_resource(sc->dev, SYS_RES_IRQ, rid);
  return (ENXIO);
 }

 error = bus_setup_intr(sc->dev, res,
     INTR_TYPE_MISC | INTR_MPSAFE | INTR_EXCL, filter, ((void*)0), cpuirq,
     &cookie);
 if (error) {
  BCM_MIPS_UNLOCK(sc);

  printf("failed to setup internal interrupt handler: %d\n",
      error);

  bus_release_resource(sc->dev, SYS_RES_IRQ, rid, res);
  bus_delete_resource(sc->dev, SYS_RES_IRQ, rid);

  return (error);
 }


 cpuirq->sc = sc;
 cpuirq->mips_irq = irq;
 cpuirq->irq_rid = rid;
 cpuirq->irq_res = res;
 cpuirq->irq_cookie = cookie;
 cpuirq->isrc_solo = ((void*)0);
 cpuirq->refs = 0;

 BCM_MIPS_UNLOCK(sc);
 return (0);
}
