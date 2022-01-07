
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct bcm_mips_irqsrc {int ivec; int isrc; } ;
struct bcm_mips_cpuirq {scalar_t__ mips_irq; struct bcm_mips_irqsrc* isrc_solo; scalar_t__ sc; } ;
struct TYPE_4__ {TYPE_2__* isrcs; } ;
struct bcm_mips74k_softc {int dev; TYPE_1__ bcm_mips; int mem; } ;
struct TYPE_6__ {int td_intr_frame; } ;
struct TYPE_5__ {int isrc; } ;


 int BCM_MIPS74K_INTR_SEL (scalar_t__) ;
 int BCM_MIPS74K_INTR_STATUS ;
 scalar_t__ BCM_MIPS74K_NUM_INTR ;
 int BCM_MIPS_IVEC_MASK (struct bcm_mips_irqsrc*) ;
 int FILTER_HANDLED ;
 int KASSERT (int,char*) ;
 int bcm_mips74k_mask_irq (struct bcm_mips74k_softc*,scalar_t__,int) ;
 int bcm_mips74k_pic_disable_intr (int ,int *) ;
 int bus_read_4 (int ,int ) ;
 TYPE_3__* curthread ;
 int device_printf (int ,char*,int) ;
 int fls (int) ;
 int intr_isrc_dispatch (int *,int ) ;
 int nitems (TYPE_2__*) ;

__attribute__((used)) static int
bcm_mips74k_pic_intr(void *arg)
{
 struct bcm_mips74k_softc *sc;
 struct bcm_mips_cpuirq *cpuirq;
 struct bcm_mips_irqsrc *isrc_solo;
 uint32_t oobsel, intr;
 u_int i;
 int error;

 cpuirq = arg;
 sc = (struct bcm_mips74k_softc*)cpuirq->sc;


 intr = bus_read_4(sc->mem, BCM_MIPS74K_INTR_STATUS);


 KASSERT(cpuirq->mips_irq < BCM_MIPS74K_NUM_INTR,
     ("invalid irq %u", cpuirq->mips_irq));

 oobsel = bus_read_4(sc->mem, BCM_MIPS74K_INTR_SEL(cpuirq->mips_irq));


 intr &= oobsel;


 isrc_solo = cpuirq->isrc_solo;
 if (isrc_solo != ((void*)0)) {
  if (intr & BCM_MIPS_IVEC_MASK(isrc_solo)) {
   error = intr_isrc_dispatch(&isrc_solo->isrc,
       curthread->td_intr_frame);
   if (error) {
    device_printf(sc->dev, "Stray interrupt %u "
        "detected\n", isrc_solo->ivec);
    bcm_mips74k_pic_disable_intr(sc->dev,
        &isrc_solo->isrc);
   }
  }

  intr &= ~(BCM_MIPS_IVEC_MASK(isrc_solo));
  if (intr == 0)
   return (FILTER_HANDLED);


  while ((i = fls(intr)) != 0) {
   i--;
   intr &= ~(1 << i);

   device_printf(sc->dev, "Stray interrupt %u "
    "detected\n", i);
   bcm_mips74k_mask_irq(sc, cpuirq->mips_irq, i);
  }

  return (FILTER_HANDLED);
 }


 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1 << i);

  KASSERT(i < nitems(sc->bcm_mips.isrcs), ("invalid ivec %u", i));

  error = intr_isrc_dispatch(&sc->bcm_mips.isrcs[i].isrc,
      curthread->td_intr_frame);
  if (error) {
   device_printf(sc->dev, "Stray interrupt %u detected\n",
       i);
   bcm_mips74k_mask_irq(sc, cpuirq->mips_irq, i);
   continue;
  }
 }

 return (FILTER_HANDLED);
}
