
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_irqsrc {int dummy; } ;
struct bcm_mips_irqsrc {int ivec; TYPE_1__* cpuirq; } ;
struct bcm_mips74k_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int mips_irq; } ;


 int KASSERT (int ,char*) ;
 int bcm_mips74k_mask_irq (struct bcm_mips74k_softc*,int ,int ) ;
 struct bcm_mips74k_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_mips74k_pic_disable_intr(device_t dev, struct intr_irqsrc *irqsrc)
{
 struct bcm_mips74k_softc *sc;
 struct bcm_mips_irqsrc *isrc;

 sc = device_get_softc(dev);
 isrc = (struct bcm_mips_irqsrc *)irqsrc;

 KASSERT(isrc->cpuirq != ((void*)0), ("no assigned MIPS IRQ"));

 bcm_mips74k_mask_irq(sc, isrc->cpuirq->mips_irq, isrc->ivec);
}
