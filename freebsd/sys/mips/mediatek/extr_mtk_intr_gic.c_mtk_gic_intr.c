
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct thread {int td_intr_nesting_level; int td_intr_frame; } ;
struct mtk_gic_softc {int gic_dev; } ;


 int FILTER_HANDLED ;
 int GIC_INTR_ISRC (struct mtk_gic_softc*,unsigned int) ;
 int KASSERT (int,char*) ;
 int MTK_INTMASK ;
 int MTK_INTSTAT ;
 unsigned int READ4 (struct mtk_gic_softc*,int ) ;
 struct thread* curthread ;
 int device_printf (int ,char*,unsigned int) ;
 unsigned int fls (unsigned int) ;
 int gic_irq_mask (struct mtk_gic_softc*,unsigned int) ;
 scalar_t__ intr_isrc_dispatch (int ,int ) ;

__attribute__((used)) static int
mtk_gic_intr(void *arg)
{
 struct mtk_gic_softc *sc = arg;
 struct thread *td;
 uint32_t i, intr;

 td = curthread;

 td->td_intr_nesting_level--;

 intr = READ4(sc, MTK_INTSTAT) & READ4(sc, MTK_INTMASK);
 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1u << i);

  if (intr_isrc_dispatch(GIC_INTR_ISRC(sc, i),
      curthread->td_intr_frame) != 0) {
   device_printf(sc->gic_dev,
    "Stray interrupt %u detected\n", i);
   gic_irq_mask(sc, i);
   continue;
  }
 }

 KASSERT(i == 0, ("all interrupts handled"));

 td->td_intr_nesting_level++;

 return (FILTER_HANDLED);
}
