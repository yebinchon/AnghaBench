
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct resource {int dummy; } ;
struct bcm_mips_softc {size_t num_cpuirqs; struct bcm_mips_cpuirq* cpuirqs; } ;
struct bcm_mips_irqsrc {int refs; struct bcm_mips_cpuirq* cpuirq; int ivec; } ;
struct bcm_mips_cpuirq {scalar_t__ refs; int irq_rid; size_t mips_irq; struct bcm_mips_irqsrc* isrc_solo; } ;
typedef int * device_t ;
typedef int bhnd_devclass_t ;


 size_t BCM_MIPS_IRQ_SHARED ;
 int BCM_MIPS_LOCK_ASSERT (struct bcm_mips_softc*,int ) ;
 int DPRINTF (char*,int ,size_t) ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int UINT_MAX ;
 int * bcm_mips_find_bhnd_parent (int ) ;
 int bhnd_get_class (int *) ;
 int rman_get_device (struct resource*) ;

__attribute__((used)) static int
bcm_mips_retain_cpu_intr(struct bcm_mips_softc *sc,
    struct bcm_mips_irqsrc *isrc, struct resource *res)
{
 struct bcm_mips_cpuirq *cpuirq;
 bhnd_devclass_t devclass;
 device_t core;

 BCM_MIPS_LOCK_ASSERT(sc, MA_OWNED);


 if (isrc->cpuirq != ((void*)0)) {
  KASSERT(isrc->cpuirq->refs > 0, ("assigned IRQ has no "
      "references"));


  if (isrc->refs == UINT_MAX)
   return (ENOMEM);

  isrc->refs++;
  return (0);
 }




 devclass = 141;
 core = bcm_mips_find_bhnd_parent(rman_get_device(res));
 if (core != ((void*)0))
  devclass = bhnd_get_class(core);

 switch (devclass) {
 case 151:
 case 150:
 case 137:
 case 136:
 case 143:
 case 149:
 case 134:
 case 135:
 case 145:
 case 142:

  cpuirq = &sc->cpuirqs[BCM_MIPS_IRQ_SHARED];
  break;

 case 139:
 case 138:
 case 140:
 case 148:
 case 147:
 case 146:
 case 130:
 case 129:
 case 128:
 case 131:
 case 133:
 case 132:
 case 141:
 case 144:
 default:

  cpuirq = &sc->cpuirqs[BCM_MIPS_IRQ_SHARED];


  for (u_int i = 0; i < sc->num_cpuirqs; i++) {
   if (i == BCM_MIPS_IRQ_SHARED)
    continue;

   if (sc->cpuirqs[i].irq_rid == -1)
    continue;

   if (sc->cpuirqs[i].refs != 0)
    continue;


   cpuirq = &sc->cpuirqs[i];
   break;
  }

  break;
 }

 DPRINTF("routing backplane interrupt vector %u to MIPS IRQ %u\n",
     isrc->ivec, cpuirq->mips_irq);

 KASSERT(isrc->cpuirq == ((void*)0), ("CPU IRQ already assigned"));
 KASSERT(isrc->refs == 0, ("isrc has active references with no "
     "assigned CPU IRQ"));
 KASSERT(cpuirq->refs == 1 || cpuirq->isrc_solo == ((void*)0),
     ("single isrc dispatch enabled on cpuirq with multiple refs"));


 if (cpuirq->refs == UINT_MAX)
  return (ENOMEM);


 cpuirq->refs++;


 isrc->refs++;


 isrc->cpuirq = cpuirq;


 if (cpuirq->refs == 1 && cpuirq->mips_irq != BCM_MIPS_IRQ_SHARED)
  cpuirq->isrc_solo = isrc;

 return (0);
}
