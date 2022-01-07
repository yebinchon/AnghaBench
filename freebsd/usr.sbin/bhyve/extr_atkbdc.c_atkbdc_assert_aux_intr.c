
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_active; int irq; } ;
struct atkbdc_softc {int* ram; TYPE_1__ aux; int ctx; } ;


 int KBD_ENABLE_AUX_INT ;
 int vm_isa_pulse_irq (int ,int ,int ) ;

__attribute__((used)) static void
atkbdc_assert_aux_intr(struct atkbdc_softc *sc)
{
 if ((sc->ram[0] & KBD_ENABLE_AUX_INT) != 0) {
  sc->aux.irq_active = 1;
  vm_isa_pulse_irq(sc->ctx, sc->aux.irq, sc->aux.irq);
 }
}
