
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct openpic_cpcht_softc {int sc_ht_mtx; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ht_base; int ht_source; } ;


 int HTAPIC_MASK ;
 scalar_t__ PCIR_HT_COMMAND ;
 TYPE_1__* cpcht_irqmap ;
 struct openpic_cpcht_softc* device_get_softc (int ) ;
 int in32rb (scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int openpic_cpcht_eoi (int ,int,void*) ;
 int openpic_unmask (int ,int,void*) ;
 int out32rb (scalar_t__,int ) ;
 int out8rb (scalar_t__,int) ;

__attribute__((used)) static void
openpic_cpcht_unmask(device_t dev, u_int irq, void *priv)
{
 struct openpic_cpcht_softc *sc;
 uint32_t ht_irq;

 openpic_unmask(dev, irq, priv);

 sc = device_get_softc(dev);

 if (cpcht_irqmap != ((void*)0) && irq < 128 &&
     cpcht_irqmap[irq].ht_base > 0) {
  mtx_lock_spin(&sc->sc_ht_mtx);


  out8rb(cpcht_irqmap[irq].ht_base + PCIR_HT_COMMAND,
      0x10 + (cpcht_irqmap[irq].ht_source << 1));


  ht_irq = in32rb(cpcht_irqmap[irq].ht_base + 4);
  ht_irq &= ~HTAPIC_MASK;
  out32rb(cpcht_irqmap[irq].ht_base + 4, ht_irq);

  mtx_unlock_spin(&sc->sc_ht_mtx);
 }

 openpic_cpcht_eoi(dev, irq, priv);
}
