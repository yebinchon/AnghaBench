
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intr_event {int ie_handlers; } ;
struct ar71xx_pci_softc {int * sc_intr_counter; struct intr_event** sc_eventstab; scalar_t__ sc_pci_ctrl_base; } ;


 int AR71XX_CPU_DDR_FLUSH_PCIE ;
 int AR71XX_PCI_IRQ_START ;
 int ATH_READ_REG (scalar_t__) ;
 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int QCA955X_PCI_INTR_DEV0 ;
 scalar_t__ QCA955X_PCI_INTR_MASK ;
 scalar_t__ QCA955X_PCI_INTR_STATUS ;
 int ar71xx_device_flush_ddr (int ) ;
 int intr_event_handle (struct intr_event*,int *) ;
 int mips_intrcnt_inc (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
qca955x_pci_intr(void *arg)
{
 struct ar71xx_pci_softc *sc = arg;
 struct intr_event *event;
 uint32_t reg, irq, mask;


 ar71xx_device_flush_ddr(AR71XX_CPU_DDR_FLUSH_PCIE);

 reg = ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_INTR_STATUS);
 mask = ATH_READ_REG(sc->sc_pci_ctrl_base + QCA955X_PCI_INTR_MASK);




 reg &= mask;



 if (reg & QCA955X_PCI_INTR_DEV0) {
  irq = AR71XX_PCI_IRQ_START;
  event = sc->sc_eventstab[irq];
  if (!event || CK_SLIST_EMPTY(&event->ie_handlers)) {
   printf("Stray IRQ %d\n", irq);
   return (FILTER_STRAY);
  }


  intr_event_handle(event, ((void*)0));
  mips_intrcnt_inc(sc->sc_intr_counter[irq]);
 }

 return (FILTER_HANDLED);
}
