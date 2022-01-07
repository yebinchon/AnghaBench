
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bcm_mips_softc {int dummy; } ;
struct bcm_mips_irqsrc {scalar_t__ refs; struct bcm_mips_cpuirq* cpuirq; } ;
struct bcm_mips_cpuirq {int refs; struct bcm_mips_irqsrc* isrc_solo; } ;


 int BCM_MIPS_LOCK_ASSERT (struct bcm_mips_softc*,int ) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;

__attribute__((used)) static int
bcm_mips_release_cpu_intr(struct bcm_mips_softc *sc,
    struct bcm_mips_irqsrc *isrc, struct resource *res)
{
 struct bcm_mips_cpuirq *cpuirq;

 BCM_MIPS_LOCK_ASSERT(sc, MA_OWNED);


 KASSERT(isrc->refs > 0, ("isrc over-release"));
 isrc->refs--;


 if (isrc->refs > 0)
  return (0);


 cpuirq = isrc->cpuirq;
 isrc->cpuirq = ((void*)0);

 KASSERT(cpuirq != ((void*)0), ("no assigned IRQ"));
 KASSERT(cpuirq->refs > 0, ("cpuirq over-release"));


 if (cpuirq->refs == 1 && cpuirq->isrc_solo != ((void*)0)) {
  KASSERT(cpuirq->isrc_solo == isrc, ("invalid solo isrc"));
  cpuirq->isrc_solo = ((void*)0);
 }

 cpuirq->refs--;

 return (0);
}
