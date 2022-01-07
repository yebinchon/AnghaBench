
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e82545_softc {scalar_t__ esc_tx_active; int esc_tx_cond; } ;


 int pthread_cond_signal (int *) ;

__attribute__((used)) static void
e82545_tx_start(struct e82545_softc *sc)
{

 if (sc->esc_tx_active == 0)
  pthread_cond_signal(&sc->esc_tx_cond);
}
