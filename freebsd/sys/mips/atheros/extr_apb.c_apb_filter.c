
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_intr_frame; } ;
struct intr_event {int ie_handlers; } ;
struct apb_softc {int * sc_intr_counter; struct intr_event** sc_eventstab; } ;


 int APB_INTR_PMC ;
 int APB_NIRQS ;
 int AR71XX_MISC_INTR_STATUS ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;
 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int FILTER_HANDLED ;
 struct thread* PCPU_GET (int ) ;
 int ar71xx_soc ;
 int curthread ;
 int intr_event_handle (struct intr_event*,struct trapframe*) ;
 int mips_intrcnt_inc (int ) ;
 int pmc_intr (struct trapframe*) ;
 int printf (char*,int) ;
 int stub1 (struct trapframe*) ;

__attribute__((used)) static int
apb_filter(void *arg)
{
 struct apb_softc *sc = arg;
 struct intr_event *event;
 uint32_t reg, irq;
 struct thread *td;
 struct trapframe *tf;

 reg = ATH_READ_REG(AR71XX_MISC_INTR_STATUS);
 for (irq = 0; irq < APB_NIRQS; irq++) {
  if (reg & (1 << irq)) {

   switch (ar71xx_soc) {
   case 139:
   case 138:
   case 137:
   case 136:
   case 135:
   case 134:
   case 133:
   case 132:
   case 131:
   case 130:
   case 129:
   case 128:

    ATH_WRITE_REG(AR71XX_MISC_INTR_STATUS,
        (1 << irq));
    break;
   default:

    break;
   }

   event = sc->sc_eventstab[irq];

   mips_intrcnt_inc(sc->sc_intr_counter[irq]);
   if (!event || CK_SLIST_EMPTY(&event->ie_handlers)) {
    if (irq == APB_INTR_PMC) {
     td = PCPU_GET(curthread);
     tf = td->td_intr_frame;

     if (pmc_intr)
      (*pmc_intr)(tf);
     continue;
    }

    if (irq != 0 && irq != 8 && irq != 9 && irq != 10)
     printf("Stray APB IRQ %d\n", irq);
    continue;
   }

   intr_event_handle(event, PCPU_GET(curthread)->td_intr_frame);
  }
 }

 return (FILTER_HANDLED);
}
