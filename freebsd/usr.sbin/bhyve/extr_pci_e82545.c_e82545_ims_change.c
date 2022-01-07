
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_IMS; int esc_irq_asserted; int esc_ITR; int * esc_mevpitr; int esc_pi; } ;


 int DPRINTF (char*,int,...) ;
 int EVF_TIMER ;
 int e82545_itr_callback ;
 int * mevent_add (int,int ,int ,struct e82545_softc*) ;
 int pci_lintr_assert (int ) ;

__attribute__((used)) static void
e82545_ims_change(struct e82545_softc *sc, uint32_t bits)
{
 uint32_t new;





 new = bits & sc->esc_ICR & ~sc->esc_IMS;
 sc->esc_IMS |= bits;

 if (new == 0) {
  DPRINTF("ims change: masked %x, ims %x\r\n", new, sc->esc_IMS);
 } else if (sc->esc_mevpitr != ((void*)0)) {
  DPRINTF("ims change: throttled %x, ims %x\r\n", new, sc->esc_IMS);
 } else if (!sc->esc_irq_asserted) {
  DPRINTF("ims change: lintr assert %x\n\r", new);
  sc->esc_irq_asserted = 1;
  pci_lintr_assert(sc->esc_pi);
  if (sc->esc_ITR != 0) {
   sc->esc_mevpitr = mevent_add(
       (sc->esc_ITR + 3905) / 3906,
       EVF_TIMER, e82545_itr_callback, sc);
  }
 }
}
