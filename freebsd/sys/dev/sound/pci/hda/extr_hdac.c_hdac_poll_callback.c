
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_softc {scalar_t__ polling; int poll_ival; int poll_callout; } ;


 int callout_reset (int *,int ,void (*) (void*),struct hdac_softc*) ;
 int hdac_intr_handler (struct hdac_softc*) ;
 int hdac_lock (struct hdac_softc*) ;
 int hdac_unlock (struct hdac_softc*) ;

__attribute__((used)) static void
hdac_poll_callback(void *arg)
{
 struct hdac_softc *sc = arg;

 if (sc == ((void*)0))
  return;

 hdac_lock(sc);
 if (sc->polling == 0) {
  hdac_unlock(sc);
  return;
 }
 callout_reset(&sc->poll_callout, sc->poll_ival,
     hdac_poll_callback, sc);
 hdac_unlock(sc);

 hdac_intr_handler(sc);
}
