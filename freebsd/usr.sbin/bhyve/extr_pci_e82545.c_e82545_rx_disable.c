
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e82545_softc {int esc_mtx; int esc_rx_cond; scalar_t__ esc_rx_active; scalar_t__ esc_rx_enabled; } ;


 int pthread_cond_wait (int *,int *) ;

__attribute__((used)) static void
e82545_rx_disable(struct e82545_softc *sc)
{

 sc->esc_rx_enabled = 0;
 while (sc->esc_rx_active)
  pthread_cond_wait(&sc->esc_rx_cond, &sc->esc_mtx);
}
