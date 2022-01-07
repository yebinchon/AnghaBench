
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int ie_handlers; } ;
struct gt_pci_softc {int sc_ioh_icu1; int sc_st; int sc_ioh_icu2; struct intr_event** sc_eventstab; } ;


 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int FILTER_HANDLED ;
 int OCW2_EOI ;
 int OCW2_ILS (int) ;
 int OCW2_SELECT ;
 int OCW2_SL ;
 int OCW3_P ;
 int OCW3_POLL_IRQ (int) ;
 int OCW3_POLL_PENDING ;
 int OCW3_SEL ;
 int PIC_OCW2 ;
 int PIC_OCW3 ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int intr_event_handle (struct intr_event*,int *) ;

__attribute__((used)) static int
gt_pci_intr(void *v)
{
 struct gt_pci_softc *sc = v;
 struct intr_event *event;
 int irq;

 for (;;) {
  bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW3,
      OCW3_SEL | OCW3_P);
  irq = bus_space_read_1(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW3);
  if ((irq & OCW3_POLL_PENDING) == 0)
  {
   return FILTER_HANDLED;
  }

  irq = OCW3_POLL_IRQ(irq);

  if (irq == 2) {
   bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2,
       PIC_OCW3, OCW3_SEL | OCW3_P);
   irq = bus_space_read_1(sc->sc_st, sc->sc_ioh_icu2,
       PIC_OCW3);
   if (irq & OCW3_POLL_PENDING)
    irq = OCW3_POLL_IRQ(irq) + 8;
   else
    irq = 2;
  }

  event = sc->sc_eventstab[irq];

  if (!event || CK_SLIST_EMPTY(&event->ie_handlers))
   continue;


  intr_event_handle(event, ((void*)0));



  if (irq > 7) {
   bus_space_write_1(sc->sc_st, sc->sc_ioh_icu2,
       PIC_OCW2, OCW2_SELECT | OCW2_EOI | OCW2_SL |
       OCW2_ILS(irq & 7));
   irq = 2;
  }

  bus_space_write_1(sc->sc_st, sc->sc_ioh_icu1, PIC_OCW2,
      OCW2_SELECT | OCW2_EOI | OCW2_SL | OCW2_ILS(irq));
 }

 return FILTER_HANDLED;
}
