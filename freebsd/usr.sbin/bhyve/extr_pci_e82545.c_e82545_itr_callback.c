
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct e82545_softc {int esc_ICR; int esc_IMS; int esc_irq_asserted; int esc_mtx; int * esc_mevpitr; int esc_pi; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int DPRINTF (char*,int) ;
 int mevent_delete (int *) ;
 int pci_lintr_assert (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
e82545_itr_callback(int fd, enum ev_type type, void *param)
{
 uint32_t new;
 struct e82545_softc *sc = param;

 pthread_mutex_lock(&sc->esc_mtx);
 new = sc->esc_ICR & sc->esc_IMS;
 if (new && !sc->esc_irq_asserted) {
  DPRINTF("itr callback: lintr assert %x\r\n", new);
  sc->esc_irq_asserted = 1;
  pci_lintr_assert(sc->esc_pi);
 } else {
  mevent_delete(sc->esc_mevpitr);
  sc->esc_mevpitr = ((void*)0);
 }
 pthread_mutex_unlock(&sc->esc_mtx);
}
