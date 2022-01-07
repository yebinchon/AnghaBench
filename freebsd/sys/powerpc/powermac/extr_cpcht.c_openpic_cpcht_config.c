
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct openpic_cpcht_softc {int sc_ht_mtx; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ht_base; int edge; int ht_source; } ;


 int HTAPIC_MASK ;
 int HTAPIC_REQUEST_EOI ;
 int HTAPIC_TRIGGER_LEVEL ;
 int INTR_TRIGGER_EDGE ;
 scalar_t__ PCIR_HT_COMMAND ;
 TYPE_1__* cpcht_irqmap ;
 struct openpic_cpcht_softc* device_get_softc (int ) ;
 int in32rb (scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int out32rb (scalar_t__,int) ;
 int out8rb (scalar_t__,int) ;

__attribute__((used)) static void
openpic_cpcht_config(device_t dev, u_int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{
 struct openpic_cpcht_softc *sc;
 uint32_t ht_irq;
 sc = device_get_softc(dev);

 if (cpcht_irqmap != ((void*)0) && irq < 128 &&
     cpcht_irqmap[irq].ht_base > 0 && !cpcht_irqmap[irq].edge) {
  mtx_lock_spin(&sc->sc_ht_mtx);


  out8rb(cpcht_irqmap[irq].ht_base + PCIR_HT_COMMAND,
      0x10 + (cpcht_irqmap[irq].ht_source << 1));


  ht_irq = in32rb(cpcht_irqmap[irq].ht_base + 4);


  out32rb(cpcht_irqmap[irq].ht_base + 4, ht_irq | HTAPIC_MASK);


  ht_irq &= ~(HTAPIC_TRIGGER_LEVEL | HTAPIC_REQUEST_EOI);
  if (trig == INTR_TRIGGER_EDGE) {
   cpcht_irqmap[irq].edge = 1;
  } else {
   cpcht_irqmap[irq].edge = 0;
   ht_irq |= HTAPIC_TRIGGER_LEVEL | HTAPIC_REQUEST_EOI;
  }
  out32rb(cpcht_irqmap[irq].ht_base + 4, ht_irq);

  mtx_unlock_spin(&sc->sc_ht_mtx);
 }
}
