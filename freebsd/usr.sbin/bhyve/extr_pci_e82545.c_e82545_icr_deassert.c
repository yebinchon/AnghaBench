
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_IMS; scalar_t__ esc_irq_asserted; int esc_pi; } ;


 int DPRINTF (char*,int) ;
 int pci_lintr_deassert (int ) ;

__attribute__((used)) static void
e82545_icr_deassert(struct e82545_softc *sc, uint32_t bits)
{

 DPRINTF("icr deassert: 0x%x\r\n", bits);
 sc->esc_ICR &= ~bits;





 if (sc->esc_irq_asserted && !(sc->esc_ICR & sc->esc_IMS)) {
  DPRINTF("icr deassert: lintr deassert %x\r\n", bits);
  pci_lintr_deassert(sc->esc_pi);
  sc->esc_irq_asserted = 0;
 }
}
