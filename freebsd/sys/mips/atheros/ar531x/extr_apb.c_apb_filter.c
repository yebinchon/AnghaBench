
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intr_event {int ie_handlers; } ;
struct apb_softc {int * sc_intr_counter; struct intr_event** sc_eventstab; } ;
struct TYPE_2__ {int td_intr_frame; } ;


 int APB_NIRQS ;
 scalar_t__ AR5312_SYSREG_AHBDMAE ;
 scalar_t__ AR5312_SYSREG_AHBPERR ;
 scalar_t__ AR5312_SYSREG_BASE ;
 scalar_t__ AR5312_SYSREG_MISC_INTSTAT ;
 scalar_t__ AR5315_SYSREG_BASE ;
 scalar_t__ AR5315_SYSREG_MISC_INTSTAT ;
 scalar_t__ AR531X_SOC_AR5315 ;
 int ATH_READ_REG (scalar_t__) ;
 int ATH_WRITE_REG (scalar_t__,int) ;
 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int FILTER_HANDLED ;
 TYPE_1__* PCPU_GET (int ) ;
 scalar_t__ ar531x_soc ;
 int curthread ;
 int intr_event_handle (struct intr_event*,int ) ;
 int mips_intrcnt_inc (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
apb_filter(void *arg)
{
 struct apb_softc *sc = arg;
 struct intr_event *event;
 uint32_t reg, irq;

 if(ar531x_soc >= AR531X_SOC_AR5315)
  reg = ATH_READ_REG(AR5315_SYSREG_BASE +
   AR5315_SYSREG_MISC_INTSTAT);
 else
  reg = ATH_READ_REG(AR5312_SYSREG_BASE +
   AR5312_SYSREG_MISC_INTSTAT);

 for (irq = 0; irq < APB_NIRQS; irq++) {
  if (reg & (1 << irq)) {

   if(ar531x_soc >= AR531X_SOC_AR5315) {
    ATH_WRITE_REG(AR5315_SYSREG_BASE +
        AR5315_SYSREG_MISC_INTSTAT,
        reg & ~(1 << irq));
   } else {
    ATH_WRITE_REG(AR5312_SYSREG_BASE +
        AR5312_SYSREG_MISC_INTSTAT,
        reg & ~(1 << irq));
   }

   event = sc->sc_eventstab[irq];
   if (!event || CK_SLIST_EMPTY(&event->ie_handlers)) {
    if(irq == 1 && ar531x_soc < AR531X_SOC_AR5315) {
     ATH_READ_REG(AR5312_SYSREG_BASE +
      AR5312_SYSREG_AHBPERR);
     ATH_READ_REG(AR5312_SYSREG_BASE +
      AR5312_SYSREG_AHBDMAE);
    }

    if (irq != 0 && irq != 6)
     printf("Stray APB IRQ %d\n", irq);

    continue;
   }

   intr_event_handle(event, PCPU_GET(curthread)->td_intr_frame);
   mips_intrcnt_inc(sc->sc_intr_counter[irq]);
  }
 }

 return (FILTER_HANDLED);
}
