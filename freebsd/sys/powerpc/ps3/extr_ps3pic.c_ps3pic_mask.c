
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct ps3pic_softc {int sc_ipi_virq; int * mask_thread1; int * mask_thread0; } ;
typedef int device_t ;


 int atomic_clear_64 (int *,unsigned long) ;
 struct ps3pic_softc* device_get_softc (int ) ;
 int lv1_did_update_interrupt_mask (int ,int) ;
 int lv1_get_logical_ppe_id (int *) ;

__attribute__((used)) static void
ps3pic_mask(device_t dev, u_int irq, void *priv)
{
 struct ps3pic_softc *sc;
 uint64_t ppe;

 sc = device_get_softc(dev);


 if (irq == sc->sc_ipi_virq)
  return;

 atomic_clear_64(&sc->mask_thread0[0], 1UL << (63 - irq));
 atomic_clear_64(&sc->mask_thread1[0], 1UL << (63 - irq));

 lv1_get_logical_ppe_id(&ppe);
 lv1_did_update_interrupt_mask(ppe, 0);
 lv1_did_update_interrupt_mask(ppe, 1);
}
