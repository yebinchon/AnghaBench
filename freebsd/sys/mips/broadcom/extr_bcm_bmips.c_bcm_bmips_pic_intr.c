
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
struct bcm_mips_cpuirq {int mips_irq; struct bcm_mips_irqsrc* isrc_solo; scalar_t__ sc; } ;
struct TYPE_4__ {TYPE_2__* isrcs; } ;
struct bcm_bmips_softc {int dev; TYPE_1__ bcm_mips; int cfg; } ;
struct TYPE_6__ {int td_intr_frame; } ;
struct TYPE_5__ {int isrc; } ;


 int BCM_MIPS_IVEC_MASK (struct bcm_mips_irqsrc*) ;
 int FILTER_HANDLED ;
 int KASSERT (int,char*) ;
 int SIBA_CFG0_FLAGST ;
 int SIBA_CFG0_INTVEC ;
 int SIBA_CFG0_IPSFLAG ;
 int SIBA_IPS_INT1_MASK ;
 int SIBA_IPS_INT1_SHIFT ;
 int SIBA_IPS_INT2_MASK ;
 int SIBA_IPS_INT2_SHIFT ;
 int SIBA_IPS_INT3_MASK ;
 int SIBA_IPS_INT3_SHIFT ;
 int SIBA_IPS_INT4_MASK ;
 int SIBA_IPS_INT4_SHIFT ;
 int bcm_bmips_mask_irq (struct bcm_bmips_softc*,int,int) ;
 int bcm_bmips_pic_disable_intr (int ,int *) ;
 int bus_read_4 (int ,int ) ;
 TYPE_3__* curthread ;
 int device_printf (int ,char*,int) ;
 int fls (int) ;
 int intr_isrc_dispatch (int *,int ) ;
 int nitems (TYPE_2__*) ;
 int panic (char*,int) ;

__attribute__((used)) static int
bcm_bmips_pic_intr(void *arg)
{
 struct bcm_bmips_softc *sc;
 struct bcm_mips_cpuirq *cpuirq;
 struct bcm_mips_irqsrc *isrc_solo;
 uint32_t sbintvec, sbstatus;
 u_int mips_irq, i;
 int error;

 cpuirq = arg;
 sc = (struct bcm_bmips_softc*)cpuirq->sc;


 sbstatus = bus_read_4(sc->cfg, SIBA_CFG0_FLAGST);


 mips_irq = cpuirq->mips_irq;
 if (mips_irq == 0) {
  sbintvec = bus_read_4(sc->cfg, SIBA_CFG0_INTVEC);
 } else {
  uint32_t ipsflag;

  ipsflag = bus_read_4(sc->cfg, SIBA_CFG0_IPSFLAG);


  switch (mips_irq) {
  case 1:
   sbintvec = (ipsflag & SIBA_IPS_INT1_MASK) >>
       SIBA_IPS_INT1_SHIFT;
   break;
  case 2:
   sbintvec = (ipsflag & SIBA_IPS_INT2_MASK) >>
       SIBA_IPS_INT2_SHIFT;
   break;
  case 3:
   sbintvec = (ipsflag & SIBA_IPS_INT3_MASK) >>
       SIBA_IPS_INT3_SHIFT;
   break;
  case 4:
   sbintvec = (ipsflag & SIBA_IPS_INT4_MASK) >>
       SIBA_IPS_INT4_SHIFT;
   break;
  default:
   panic("invalid irq %u", mips_irq);
  }
 }


 sbstatus &= sbintvec;


 isrc_solo = cpuirq->isrc_solo;
 if (isrc_solo != ((void*)0)) {
  if (sbstatus & BCM_MIPS_IVEC_MASK(isrc_solo)) {
   error = intr_isrc_dispatch(&isrc_solo->isrc,
       curthread->td_intr_frame);
   if (error) {
    device_printf(sc->dev, "Stray interrupt %u "
        "detected\n", isrc_solo->ivec);
    bcm_bmips_pic_disable_intr(sc->dev,
        &isrc_solo->isrc);
   }
  }

  sbstatus &= ~(BCM_MIPS_IVEC_MASK(isrc_solo));
  if (sbstatus == 0)
   return (FILTER_HANDLED);


  while ((i = fls(sbstatus)) != 0) {
   i--;
   sbstatus &= ~(1 << i);

   device_printf(sc->dev, "Stray interrupt %u "
    "detected\n", i);
   bcm_bmips_mask_irq(sc, mips_irq, i);
  }

  return (FILTER_HANDLED);
 }


 while ((i = fls(sbstatus)) != 0) {
  i--;
  sbstatus &= ~(1 << i);

  KASSERT(i < nitems(sc->bcm_mips.isrcs), ("invalid ivec %u", i));

  error = intr_isrc_dispatch(&sc->bcm_mips.isrcs[i].isrc,
      curthread->td_intr_frame);
  if (error) {
   device_printf(sc->dev, "Stray interrupt %u detected\n",
       i);
   bcm_bmips_mask_irq(sc, mips_irq, i);
   continue;
  }
 }

 return (FILTER_HANDLED);
}
