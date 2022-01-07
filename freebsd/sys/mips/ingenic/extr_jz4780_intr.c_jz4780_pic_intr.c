
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct thread {int td_intr_nesting_level; int td_intr_frame; } ;
struct jz4780_pic_softc {int pic_dev; } ;
struct intr_irqsrc {int dummy; } ;


 int FILTER_HANDLED ;
 int JZ_ICPR0 ;
 int JZ_ICPR1 ;
 int KASSERT (int,char*) ;
 struct intr_irqsrc* PIC_INTR_ISRC (struct jz4780_pic_softc*,unsigned int) ;
 unsigned int READ4 (struct jz4780_pic_softc*,int ) ;
 struct thread* curthread ;
 int device_printf (int ,char*,unsigned int) ;
 unsigned int fls (unsigned int) ;
 scalar_t__ intr_isrc_dispatch (struct intr_irqsrc*,int ) ;
 int pic_irq_mask (struct jz4780_pic_softc*,unsigned int) ;

__attribute__((used)) static int
jz4780_pic_intr(void *arg)
{
 struct jz4780_pic_softc *sc = arg;
 struct intr_irqsrc *isrc;
 struct thread *td;
 uint32_t i, intr;

 td = curthread;

 td->td_intr_nesting_level--;

 intr = READ4(sc, JZ_ICPR0);
 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1u << i);

  isrc = PIC_INTR_ISRC(sc, i);
  if (intr_isrc_dispatch(isrc, curthread->td_intr_frame) != 0) {
   device_printf(sc->pic_dev, "Stray interrupt %u detected\n", i);
   pic_irq_mask(sc, i);
   continue;
  }
 }

 KASSERT(i == 0, ("all interrupts handled"));

 intr = READ4(sc, JZ_ICPR1);
 while ((i = fls(intr)) != 0) {
  i--;
  intr &= ~(1u << i);
  i += 32;

  isrc = PIC_INTR_ISRC(sc, i);
  if (intr_isrc_dispatch(isrc, curthread->td_intr_frame) != 0) {
   device_printf(sc->pic_dev, "Stray interrupt %u detected\n", i);
   pic_irq_mask(sc, i);
   continue;
  }
 }

 KASSERT(i == 0, ("all interrupts handled"));
 td->td_intr_nesting_level++;

 return (FILTER_HANDLED);
}
