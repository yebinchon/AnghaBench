
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mips_softc {int dev; } ;
struct bcm_mips_cpuirq {scalar_t__ refs; int irq_rid; int * irq_res; int * irq_cookie; int * sc; } ;


 int BCM_MIPS_LOCK (struct bcm_mips_softc*) ;
 int BCM_MIPS_UNLOCK (struct bcm_mips_softc*) ;
 int EBUSY ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int bus_delete_resource (int ,int ,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;

__attribute__((used)) static int
bcm_mips_fini_cpuirq(struct bcm_mips_softc *sc, struct bcm_mips_cpuirq *cpuirq)
{
 int error;

 BCM_MIPS_LOCK(sc);

 if (cpuirq->sc == ((void*)0)) {
  KASSERT(cpuirq->irq_res == ((void*)0), ("leaking cpuirq resource"));

  BCM_MIPS_UNLOCK(sc);
  return (0);
 }

 if (cpuirq->refs != 0) {
  BCM_MIPS_UNLOCK(sc);
  return (EBUSY);
 }

 if (cpuirq->irq_cookie != ((void*)0)) {
  KASSERT(cpuirq->irq_res != ((void*)0), ("resource missing"));

  error = bus_teardown_intr(sc->dev, cpuirq->irq_res,
   cpuirq->irq_cookie);
  if (error) {
   BCM_MIPS_UNLOCK(sc);
   return (error);
  }

  cpuirq->irq_cookie = ((void*)0);
 }

 if (cpuirq->irq_res != ((void*)0)) {
  bus_release_resource(sc->dev, SYS_RES_IRQ, cpuirq->irq_rid,
      cpuirq->irq_res);
  cpuirq->irq_res = ((void*)0);
 }

 if (cpuirq->irq_rid != -1) {
  bus_delete_resource(sc->dev, SYS_RES_IRQ, cpuirq->irq_rid);
  cpuirq->irq_rid = -1;
 }

 BCM_MIPS_UNLOCK(sc);

 return (0);
}
