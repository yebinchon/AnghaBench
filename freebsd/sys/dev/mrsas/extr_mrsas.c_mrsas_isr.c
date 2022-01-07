
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrsas_softc {int reset_flags; int msix_vectors; scalar_t__ mask_interrupts; } ;
struct mrsas_irq_context {int MSIxIndex; struct mrsas_softc* sc; } ;


 int MRSAS_FUSION_IN_RESET ;
 scalar_t__ SUCCESS ;
 int mrsas_clear_intr (struct mrsas_softc*) ;
 scalar_t__ mrsas_complete_cmd (struct mrsas_softc*,int ) ;
 scalar_t__ mrsas_test_bit (int ,int *) ;
 int printf (char*) ;

void
mrsas_isr(void *arg)
{
 struct mrsas_irq_context *irq_context = (struct mrsas_irq_context *)arg;
 struct mrsas_softc *sc = irq_context->sc;
 int status = 0;

 if (sc->mask_interrupts)
  return;

 if (!sc->msix_vectors) {
  status = mrsas_clear_intr(sc);
  if (!status)
   return;
 }

 if (mrsas_test_bit(MRSAS_FUSION_IN_RESET, &sc->reset_flags)) {
  printf(" Entered into ISR when OCR is going active. \n");
  mrsas_clear_intr(sc);
  return;
 }

 if (mrsas_complete_cmd(sc, irq_context->MSIxIndex) != SUCCESS)
  mrsas_clear_intr(sc);

 return;
}
