
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mips_softc {int dummy; } ;
struct bcm_mips_cpuirq {int irq_rid; scalar_t__ refs; int * isrc_solo; int * irq_cookie; int * irq_res; scalar_t__ mips_irq; struct bcm_mips_softc* sc; } ;


 int BCM_MIPS_LOCK (struct bcm_mips_softc*) ;
 int BCM_MIPS_UNLOCK (struct bcm_mips_softc*) ;
 int KASSERT (int ,char*) ;

__attribute__((used)) static int
bcm_mips_init_cpuirq_unavail(struct bcm_mips_softc *sc,
    struct bcm_mips_cpuirq *cpuirq)
{
 BCM_MIPS_LOCK(sc);

 KASSERT(cpuirq->sc == ((void*)0), ("cpuirq already initialized"));
 cpuirq->sc = sc;
 cpuirq->mips_irq = 0;
 cpuirq->irq_rid = -1;
 cpuirq->irq_res = ((void*)0);
 cpuirq->irq_cookie = ((void*)0);
 cpuirq->isrc_solo = ((void*)0);
 cpuirq->refs = 0;

 BCM_MIPS_UNLOCK(sc);

 return (0);
}
