
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int mtx; } ;


 int atkbdc_aux_poll (struct atkbdc_softc*) ;
 int atkbdc_kbd_poll (struct atkbdc_softc*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
atkbdc_event(struct atkbdc_softc *sc, int iskbd)
{
 pthread_mutex_lock(&sc->mtx);

 if (iskbd)
  atkbdc_kbd_poll(sc);
 else
  atkbdc_aux_poll(sc);
 pthread_mutex_unlock(&sc->mtx);
}
