
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int mtx; } ;


 int assert (int ) ;
 int atkbdc_kbd_read (struct atkbdc_softc*) ;
 int pthread_mutex_isowned_np (int *) ;

__attribute__((used)) static void
atkbdc_kbd_poll(struct atkbdc_softc *sc)
{
 assert(pthread_mutex_isowned_np(&sc->mtx));

 atkbdc_kbd_read(sc);
}
